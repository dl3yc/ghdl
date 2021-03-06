
-- Copyright (C) 2002 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- analyze into resource library utilities

package utility_definitions is

  constant word_size : natural := 16;

end package utility_definitions;



library utilities;

entity inline_01 is

end entity inline_01;


----------------------------------------------------------------


architecture test of inline_01 is
begin


  process is
  begin

    report

    -- code from book:

    utilities.utility_definitions.word_size'simple_name

    -- end of code from book

    ;

    wait;
  end process;


end architecture test;
