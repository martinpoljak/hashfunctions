# encoding: utf-8
# (c) 2012 Martin Kozák (martinkozak@martinkozak.net)

begin
    require "general-hash-functions/extension"
    GeneralHashFunctions = GeneralHashFunctionsExt
rescue LoadError
    require "general-hash-functions/pure"
    GeneralHashFunctions = GeneralHashFunctionsPure
end
