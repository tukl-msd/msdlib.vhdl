library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--work packages
use work.pkg_global.all;

-----------------------------------------------------------------------
--
-- AXI Stream interface signals
--
-- S_AXIS_READY: Ready to accept data in
-- S_AXIS_DATA: Data in
-- S_AXIS_VALID: Data in is valid

-- M_AXIS_VALID: Data out is valid
-- M_AXIS_DATA: Data out
-- M_AXIS_READY: Connected slave device is ready to accept data out
--
-----------------------------------------------------------------------

entity flag_fifo is
  
  port ( 
  
  
            aclk                    : in  std_logic;
            aresetn                 : in  std_logic;
            
            --Data in interface
            s_axis_input_tvalid     : in  std_logic;
            s_axis_input_tflag      : in  std_logic_vector(1 downto 0);
            s_axis_input_tready     : out std_logic;
            
            --Data out interface
            m_axis_output_tvalid    : out std_logic;
            m_axis_output_tready    : in  std_logic;
            m_axis_output_tflag     : out std_logic_vector(1 downto 0)   
            
        );
            
end flag_fifo;

architecture SIM of flag_fifo is
  
      constant FIFO_DEPTH: natural := 1024;
      constant NUM_CFG_REGS: natural :=2;
  
      --data pointers for read and write 
      signal write_ptr: natural;
      signal read_ptr: natural;
  
      --number of unread data in the fifo
      signal num_data: natural;
  
      --overall number of data passed through the fifo
      signal num_processed_data: natural;
  
      --signals for FIFO state
      signal fifo_not_full : std_logic;
      signal fifo_not_empty: std_logic;
  
      --FIFO memory
      type fifo_mem is array (FIFO_DEPTH-1 downto 0) of std_logic_vector(1 downto 0);
      signal fifo: fifo_mem;
  
      --memory config
      type cfg_t is array (NUM_CFG_REGS -1 downto 0) of std_logic_vector(1 downto 0);
        signal cfg:cfg_t;
        signal cfg_i:cfg_t;
  
      signal ctrl_ptr:natural;
  
      signal cfg_valid_i:std_logic;
      signal cfg_valid:std_logic;
  
  
      --soft reset
      signal cfg_reset:std_logic_vector(1 downto 0);
      signal soft_resetn:std_logic;
  
      --fifo depth reduced during write 
      signal cfg_fifo_depth: natural;
  
      --derived fifo depth
      signal soft_fifo_depth: natural;
  
      signal output_flag:std_logic_vector(1 downto 0);
  
      signal status_i: std_logic_vector(1 downto 0);
  
      signal status_cnt:natural;
  
begin
  
      fifo_not_full   <=  '1' when num_data<soft_fifo_depth else
                          '0';
                  
      fifo_not_empty  <=  '1' when num_data > 0 else
                          '0';
                  
      cfg             <=  cfg_i when cfg_valid_i='1' else
                          cfg;
        
      cfg_reset       <=  cfg(0) when cfg_valid_i ='1' else
                          (others=>'X');
            
      cfg_fifo_depth  <=  to_integer(unsigned(cfg(1)));
                    
      --generate the fifo reset
      soft_resetn     <=  '0' when (aresetn='0') else
                          '1';
  
      soft_fifo_depth <=  cfg_fifo_depth when (cfg_valid='1') and (cfg_fifo_depth<FIFO_DEPTH) and (cfg_fifo_depth> 0) else
                          FIFO_DEPTH;
                          
                          
      -------------------------------------output---------------------------------------------
                   
      s_axis_input_tready   <=  '1' when fifo_not_full='1' and soft_resetn='1' else
                                '0';
             
      m_axis_output_tvalid  <=  '1' when fifo_not_empty='1' else
                                '0';
             
      m_axis_output_tflag   <=  output_flag;
  
      output_flag           <=  fifo(read_ptr)when fifo_not_empty ='1' and aresetn='1' else
                                output_flag when aresetn='1' else
                                (others=>'X');
      
      ----------------------------------------------------------------------------------------         
  
  
      axis_cfg:process(aclk) is
      begin
        if rising_edge(aclk) then
          if aresetn='0' then
            cfg_valid<='0';
          else
            if cfg_valid_i='1' then
              cfg_valid<='1';
            end if;
          end if;
        end if;
      end process;
  
      axis_data:process(aclk) is
          variable v_num_data:natural;
      begin
        if rising_edge(aclk) then
          if soft_resetn='0' then
            fifo<=(others=> (others=>'X'));
            num_data<=0;
            write_ptr<=0;
            read_ptr<=0;
            cfg_valid_i<='0';
            v_num_data:=0;
            num_processed_data<=0;
            cfg_i<=(others=> (others=>'X'));
          else
            v_num_data:=num_data;
        
            --------write fifo
        
          if (s_axis_input_tvalid='1') and (fifo_not_full='1') then
          
            --write data
            fifo(write_ptr)<=s_axis_input_tflag;
          
            --increment write pointer
            if write_ptr<soft_fifo_depth-1 then
              write_ptr<=write_ptr+1;
            else
              write_ptr<=0;
            end if;
          
            --increment valid data counter
            v_num_data:=v_num_data+1;
          end if;
        
          ----------read fifo
        
          if fifo_not_empty='1' then
            if m_axis_output_tready='1' then
            
              --decrement the valid data counter
              v_num_data:=v_num_data-1;
            
              --increment the processed data
              num_processed_data<=num_processed_data+1;
            
              --increment the read pointer
              if read_ptr<soft_fifo_depth-1 then
                read_ptr<=read_ptr+1;
              else
                read_ptr<=0;
              end if;
            end if;
          end if;
        
          num_data<=v_num_data;
        
        end if;
      end if;
    end process axis_data;
end SIM;
