root_dir="/Users/zhangjunqi/Documents/文件/助教/人工智能导论/作业批改/mac/"
for file in `ls "${root_dir}Check_mac"`
do
    cd "${root_dir}Check_mac/${file}"
    pwd
    /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x c++ -arch i386 -fmessage-length=0 -std=gnu++11 -stdlib=libc++ -Wno-trigraphs -fpascal-strings -Os -Wno-missing-field-initializers -Wno-missing-prototypes -Wreturn-type -Wno-non-virtual-dtor -Wno-overloaded-virtual -Wno-exit-time-destructors -Wformat -Wno-missing-braces -Wparentheses -Wswitch -Wno-unused-function -Wno-unused-label -Wno-unused-parameter -Wunused-variable -Wunused-value -Wempty-body -Wuninitialized -Wno-unknown-pragmas -Wno-shadow -Wno-four-char-constants -Wno-conversion -Wshorten-64-to-32 -Wno-newline-eof -Wno-c++12-extensions -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk -fasm-blocks -Wdeprecated-declarations -Winvalid-offsetof -mmacosx-version-min=10.9 -g -fvisibility-inlines-hidden -Wno-sign-conversion -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Users/zhangjunqi/Documents/文件/助教/人工智能导论/作业批改/mac/include -MMD -MT dependencies -c *.cpp

    /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ *.o /Users/zhangjunqi/Documents/文件/助教/人工智能导论/作业批改/mac/include/*.o -arch i386 -dynamiclib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk -mmacosx-version-min=10.9 -stdlib=libc++ -single_module -compatibility_version 1 -current_version 1 -o "${file}.dylib"
    cd -
done

# root_dir="/Users/suning/suning/助教课程/人工智能导论2016/project/"
# for file in `ls "${root_dir}Check_mac"`
# do
# 	cd "${root_dir}Check_mac/${file}"
# 	pwd
# 	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x c++ -arch i386 -fmessage-length=0 -std=gnu++11 -stdlib=libc++ -Wno-trigraphs -fpascal-strings -Os -Wno-missing-field-initializers -Wno-missing-prototypes -Wreturn-type -Wno-non-virtual-dtor -Wno-overloaded-virtual -Wno-exit-time-destructors -Wformat -Wno-missing-braces -Wparentheses -Wswitch -Wno-unused-function -Wno-unused-label -Wno-unused-parameter -Wunused-variable -Wunused-value -Wempty-body -Wuninitialized -Wno-unknown-pragmas -Wno-shadow -Wno-four-char-constants -Wno-conversion -Wshorten-64-to-32 -Wno-newline-eof -Wno-c++11-extensions -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk -fasm-blocks -Wdeprecated-declarations -Winvalid-offsetof -mmacosx-version-min=10.9 -g -fvisibility-inlines-hidden -Wno-sign-conversion -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Users/suning/suning/助教课程/人工智能导论2016/project/include -MMD -MT dependencies -c *.cpp

# 	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ *.o /Users/suning/suning/助教课程/人工智能导论2016/project/include/*.o -arch i386 -dynamiclib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk -mmacosx-version-min=10.9 -stdlib=libc++ -single_module -compatibility_version 1 -current_version 1 -o "${file}.dylib"
# 	cd -
# done
