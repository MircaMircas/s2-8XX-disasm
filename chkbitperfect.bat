call tool/md5 s2swbuilt.bin md5
if "%md5%" equ "51c1eee9dd79db9ef0d8b0aa36957b16" (
      echo MD5 identical!
) else (
      echo MD5 does not match.
)
pause
