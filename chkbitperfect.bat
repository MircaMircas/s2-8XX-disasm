call build_tools/md5.bat s2built.bin md5

if "%md5%" equ "51c1eee9dd79db9ef0d8b0aa36957b16" (
      echo MD5 identical!
) else (
      echo MD5 does not match.
)

pause