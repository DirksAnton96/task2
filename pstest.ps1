cd I:/git/task2.5/
git clone git@github.com:DirksAnton96/task2.git 

cd .\task2

$b = git describe

if ($b.Length -igt 5)
{
  $c=$b.Substring(1,3)
  $d = [float]$c
  $d = $d + 0.1
  $c = [string]$d
  $c = $c.Substring(0,3)
  $c = "v" + $c
  git tag -a $c -m " my new tag "
  git push origin $c

  cd I:\git\task2\task25
  Remove-Item 'I:\git\task2.5\task2' -Recurse -Force
}
else
{
  echo "No changes!!" 
  cd I:\git\task2\task25
  Remove-Item 'I:\git\task2.5\task2' -Recurse -Force
}

