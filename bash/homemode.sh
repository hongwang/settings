if [[ "`uname`" == "Linux" ]]; then
  echo "I'm linux"
elif [[ "`uname`" == "Darwin" ]]; then
 PATH=$HOME'/n/bin':$PATH
 export PATH
elif [[ "`uname`" == "Win32" ]]; then
 PATH='/c/Windows/Microsoft.NET/Framework/v4.0.30319':$PATH
 PATH='/d/Program Files/Sublime Text 3':$PATH
 export PATH
 export repos='/e/repos'
 export own=$repos'/own'
 export sts=$repos'/own/settings'
 export lnet=$repos'/dotNet'
 export ljs=$repos'/javascript'
 export lasp=$repos'/aspnet'
fi

# Mysql
alias mysql='mycli -h localhost -u root'
alias mysqls='mysql.server'
