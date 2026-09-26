--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with ESPIDF.C_Strings;

package ESPIDF.mDNS is

   function mdns_init return esp_err_t
     with Import, Convention => C, External_Name => "mdns_init";
   --  Initialize mDNS on given interface.
   --  @return
   --    - `ESP_OK` if mDNS was initialized successfully
   --    - `ESP_ERR_INVALID_STATE` if event handler cannot be registered
   --    - `ESP_ERR_NO_MEM` if memory cannot be allocated
   --    - `ESP_FAIL` if mdns task cannot be started

   procedure mdns_init;
   --  Initialize mDNS on given interface.
   --  @raise ESPIDF_Error raised on error:
   --    - `ESP_ERR_INVALID_STATE` if event handler cannot be registered
   --    - `ESP_ERR_NO_MEM` if memory cannot be allocated
   --    - `ESP_FAIL` if mdns task cannot be started

   function mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string) return esp_err_t;
   --  Set the hostname for mDNS server, required if you want to advertise
   --  services.
   --  @param hostname Hostname to set
   --  @return
   --    - `ESP_OK` if hostname was set successfully
   --    - `ESP_ERR_INVALID_ARG` if parameters are invalid
   --    - `ESP_ERR_NO_MEM` if memory cannot be allocated

   procedure mdns_hostname_set
     (hostname : ESPIDF.C_Strings.char_array_string);
   --  Set the hostname for mDNS server, required if you want to advertise
   --  services.
   --  @param hostname Hostname to set
   --  @raise ESPIDF_Error raised on error:
   --    - `ESP_ERR_INVALID_ARG` if parameters are invalid
   --    - `ESP_ERR_NO_MEM` if memory cannot be allocated

end ESPIDF.mDNS;
