library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

package pkg_component is
  
		--components declarations
        
        
        -- Data stall unit
  
        component data_stall is
    
            port (
    
                    aclk                      : in  std_logic;
                    aresetn                   : in  std_logic;
          
                    --Data in interface
                    s_axis_input_tvalid1      : in  std_logic;
                    s_axis_input_tvalid2      : in  std_logic;
                    s_axis_input_tdata1       : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tdata2       : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tready1      : out std_logic;
                    s_axis_input_tready2      : out std_logic;
          
                    --Data out interface
                    m_axis_output_tvalid1     : out std_logic;
                    m_axis_output_tvalid2     : out std_logic;
                    m_axis_output_tdata1      : out std_logic_vector(EXP+MANT downto 0);
                    m_axis_output_tdata2      : out std_logic_vector(EXP+MANT downto 0);
                    m_axis_output_tready1     : in  std_logic;
                    m_axis_output_tready2     : in  std_logic
          
                  );
  
        end component;
		
		
		-- Type Detection Unit
        
        
        component type_detect is
            port (
              
                    aclk                    : in  std_logic;
                    aresetn                 : in  std_logic;
                    
                    --Data in interface
                    s_axis_input_tvalid     : in  std_logic;
                    s_axis_input_tdata      : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tready     : out std_logic;
                    
                    --Data out interface
                    m_axis_output_tvalid    : out std_logic;
                    m_axis_output_tready    : in  std_logic;
                    m_axis_output_tflag     : out std_logic_vector(1 downto 0);
                    m_axis_output_tdata     : out std_logic_vector(EXP+MANT downto 0)
                    
                  );
                  
        end component;
		
		
		    -- Type Detection Unit		
		
		    component transform_unit is
    
            port (
        
                    aclk                  : in  std_logic;
                    aresetn               : in  std_logic;
        
                    --Data in interface
                    s_axis_input_tready   : out std_logic;
                    s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
                    s_axis_input_tvalid   : in  std_logic;
                    s_axis_input_wait_in  : in  std_logic;
                    s_axis_input_tdata    : in  std_logic_vector(EXP+MANT downto 0);
        
                    --Data out interface
                    m_axis_output_tready  : in  std_logic;
                    m_axis_output_tvalid  : out std_logic;            
                    m_axis_output_wait_out: out std_logic;
                    m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
                
                );
    
        end component;

		    -- Extend Unit

        component data_extend is
            
			     port (
  
                    aclk                    : in  std_logic;
                    aresetn                 : in  std_logic;
            
                    --Data in interface
                    s_axis_input_tvalid     : in  std_logic;
                    s_axis_input_tdata      : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tready     : out std_logic;
            
                    --Data out interface
                    m_axis_output_tvalid    : out std_logic;
                    m_axis_output_tready    : in  std_logic;
                    m_axis_output_tdata     : out std_logic_vector(EXCP+EXP+MANT downto 0)
            
                  );
    
        end component;


		--32-bit multiplication library

		--component float_multiply is
--			
--			port ( 
--			
--					clk: in std_logic;
--					rst : in std_logic;
--					X : in  std_logic_vector(8+23+2 downto 0);
--					Y : in  std_logic_vector(8+23+2 downto 0);
--					R : out  std_logic_vector(8+23+2 downto 0) 
--					
--				);
--		end component;

		
		--64-bit multiplication library

		 component float_multiply is
		    port ( 
		
					 clk	:	in	std_logic;
					 rst :	in	std_logic;
					 X	:	in 	std_logic_vector(11+52+2 downto 0);
					 Y	:	in 	std_logic_vector(11+52+2 downto 0);
					 R	:	out	std_logic_vector(11+52+2 downto 0)
				 );
		
		 end component;

		
		--Downsize unit
		
		component data_downsize is
    
          port (
  
                  aclk                    : in  std_logic;
                  aresetn                 : in  std_logic;
          
                  --Data in interface
                  s_axis_input_tvalid     : in  std_logic;
                  s_axis_input_tdata      : in  std_logic_vector(EXCP+EXP+MANT downto 0);
                  s_axis_input_tready     : out std_logic;
            
                  --Data out interface
                  m_axis_output_tvalid    : out std_logic;
                  m_axis_output_tready    : in  std_logic;
                  m_axis_output_tdata     : out std_logic_vector(EXP+MANT downto 0)
  
              );
    
        end component;

		--valid fifo 
        
		component  fifo is
  
          port (
          
                  aclk                 : in  std_logic;
                  aresetn              : in  std_logic;
                  s_axis_input_tvalid1 : in  std_logic;
                  s_axis_input_tvalid2 : in  std_logic;
                  m_axis_output_tvalid : out std_logic
                );
        
        end component;


end pkg_component;