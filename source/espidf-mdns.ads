--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with ESPIDF.C_Strings;

package ESPIDF.mDNS is

   function mdns_init return esp_err_t
     with Import, Convention => C, External_Name => "mdns_init";

   procedure mdns_init;

   function mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string) return esp_err_t;

   procedure mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string);

end ESPIDF.mDNS;
