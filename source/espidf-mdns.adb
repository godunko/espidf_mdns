--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with ESPIDF.Ada_ESP_Check_Error;

package body ESPIDF.mDNS is

   ---------------
   -- mdns_init --
   ---------------

   procedure mdns_init is
   begin
      Ada_ESP_Check_Error (mdns_init);
   end mdns_init;

end ESPIDF.mDNS;
