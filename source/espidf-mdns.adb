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

   -----------------------
   -- mdns_hostname_set --
   -----------------------

   function mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string) return esp_err_t
   is
      function Imported
        (hostname : ESPIDF.C_Strings.const_char_ptr) return esp_err_t
        with Import, Convention => C, External_Name => "mdns_hostname_set";

   begin
      return Imported (ESPIDF.C_Strings.As_const_char_ptr (hostname));
   end mdns_hostname_set;

   -----------------------
   -- mdns_hostname_set --
   -----------------------

   procedure mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string) is
   begin
      Ada_ESP_Check_Error (mdns_hostname_set (hostname));
   end mdns_hostname_set;

end ESPIDF.mDNS;
