
require "highline/import"

def check
puts("\n\n\n\n\n\n\n\n")
say("<%= color('\t\t欢迎来到半分利便利店', YELLOW) %>")
password=ask("\t\t  请输入口令:\t"){|q| q.echo='*'}
i=0
pass=1
while password!="hjq" 
      i=i+1
      if i<3
      puts "\t\t口令错误，请再次输入\n"
      password=ask("\t\t  请输入口令:\t"){|q| q.echo='*'}
      else
      puts "\t\t输入超过三次，已没有机会了!"
      pass=0;
      break;
      end
end
  return pass
end

