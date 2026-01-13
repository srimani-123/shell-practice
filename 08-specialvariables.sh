echo "all variables passed: $@"

echo "numbeer of vaiables: $#"
echo "present working directory: $PWD"
echo "directory of current user: $home"
echo "process id of current script: $$"
echo "process id of last command in background: $!"
echo "script name: $0"
sleep 60 & 
present 
