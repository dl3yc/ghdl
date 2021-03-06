
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

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

-- ---------------------------------------------------------------------
--
-- $Id: tc21.vhd,v 1.2 2001-10-26 16:30:15 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c04s02b00x00p09n03i00021ent IS
END c04s02b00x00p09n03i00021ent;

ARCHITECTURE c04s02b00x00p09n03i00021arch OF c04s02b00x00p09n03i00021ent IS
  type    A3 is ('a', 'b', 'c', 'd', 'e');
  subtype B3 is A3 range 'b' to 'd';
  subtype C3 is B3 range 'a' to 'e';          -- Failure_here
BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST:c04s02b00x00p09n03i00021 - Range constraints for the subtype declarations contradict the range of the subtype indication.(character)"
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c04s02b00x00p09n03i00021arch;
