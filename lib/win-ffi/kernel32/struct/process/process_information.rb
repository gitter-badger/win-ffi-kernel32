require 'win-ffi/kernel32'

module WinFFI
  module Kernel32
    class PROCESS_INFORMATION < FFIStruct
      layout :hProcess,    :handle,
             :hThread,     :handle,
             :dwProcessId, :dword,
             :dwThreadId,  :dword
    end
  end
end