require 'win-ffi/kernel32'

module WinFFI
  if WindowsVersion >= 8.1
    module Kernel32
      OfferPriority = enum :offer_priority, [
          :VmVeryLow, 1,
          :VmLow,
          :VmBelowNormal,
          :VmNormal
      ]
    end
  end
end