--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package ESPIDF.mDNS is

   function mdns_init return esp_err_t
     with Import, Convention => C, External_Name => "mdns_init";

   procedure mdns_init;

end ESPIDF.mDNS;
