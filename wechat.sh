DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
clang -dynamiclib ${DIR}/main.m -fobjc-link-runtime -current_version 1.0 -compatibility_version 1.0 -o ${DIR}/wechat_no_revoke.A.dylib
if [ "$?" -eq "0" ]; then
  DYLD_INSERT_LIBRARIES=${DIR}/wechat_no_revoke.A.dylib /Applications/WeChat.app/Contents/MacOS/WeChat &
fi
