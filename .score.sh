#!/bin/sh
score=0

count=$(grep -o "angular" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

count=$(grep -o "karma" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

count=$(grep -o "async" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

counts=$(grep -o "repository" package.json | wc -l)
count=$(grep -o "git" package.json | wc -l)
if [ $counts != 0 ] && [ $count != 0 ];
then score=$((score + 10))
fi;


count=$(grep -o "MIT" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

count=$(grep -o "devDependencies" package.json | wc -l)
counts=$(grep -o "grunt" package.json | wc -l)
if [ $counts != 0 ] && [ $count != 0 ];
then score=$((score + 15))
fi;

count=$(grep -o "e2e" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

count=$(grep -o "name" package.json | wc -l)
counts=$(grep -o "invoicer" package.json | wc -l)
if [ $count != 0 ] && [ $counts != 0 ];
then score=$((score + 15))
fi;

count=$(grep -o "jasmine" package.json | wc -l)
if [ $count != 0 ];
then score=$((score + 10))
fi;

echo "FS_SCORE:$score%"