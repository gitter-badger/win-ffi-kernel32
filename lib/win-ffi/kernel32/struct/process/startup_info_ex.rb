require 'win-ffi/kernel32/struct/process/startup_info'

module WinFFI
  if WindowsVersion >= :vista
    module Kernel32
      class STARTUPINFOEX < FFIStruct
        layout :StartupInfo,     STARTUPINFO,
               :lpAttributeList, :pointer

        def initialize
          super
          StartupInfo.cb = self.size
        end
      end
    end
  end
end