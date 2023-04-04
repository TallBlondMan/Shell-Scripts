# /bin/bash
FS='./';
echo "== Server Time: ==";
date;
echo -e "\n== Filesystem Information: ==";
df -PTh ${FS} | column -t;
echo -e "\n== Inode Information: ==";
df -PTi ${FS} | column -t;
echo -e "\n== Largest Directories: ==";
du -hcx --max-depth=2 ${FS} 2>/dev/null | grep -P '^([0-9]\.*)*G(?!.*(\btotal\b|\./$))' | sort -rnk1,1 | head -10 | column -t;
echo -e "\n== Largest Files: ==";
find ${FS} -mount -ignore_readdir_race -type f -exec du {} + 2>&1 | sort -rnk1,1 | head -20 | awk 'BEGIN{ CONVFMT="%.2f";}{ $1=( $1 / 1024 )"M"; print;}' | column -t;
echo -e "\n== Largest Files Older Than 30 Days: ==";
find ${FS} -mount -ignore_readdir_race -type f -mtime +30 -exec du {} + 2>&1 | sort -rnk1,1 | head -20 | awk 'BEGIN{ CONVFMT="%.2f";}{ $1=( $1 / 1024 )"M"; print; }' | column -t;
