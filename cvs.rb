require "password"
require "Goods"
require "Baskets"

pass=check
if pass==1
   #每一次购物
   puts("\n\n\n\n\n\n\n\n\n")
   puts("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
   say("<%= color('\t\t  欢迎光临,祝您购物愉快',:YELLOW,:bold) %>")
   say("<%= color('\t\t    今日特价,机不可失',RED) %>")
   say("<%= color('\t\t全场满100打95折，火腿肠买二赠一',RED) %>")
   puts("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
   puts("\n\n\n")

   goods_list=[]
   File.open("goods.txt").each_line do |line|
      goods_list<< Goods.new(line)
    
    end
    bas=Baskets.new
    ch=gets.strip
    while ch=~/[^\s]/
        buy=ch.split(' ')
        select=goods_list.find {|goods| goods.id == buy[0]}
        if buy.length==1
          bas.add(select,1)
        else
          bas.add(select,buy[1].to_i)
        end
        total=bas.display
        ch=gets.strip
    end 
   
   puts"\n\t\t\t\t\t\t合计\t#{total}"
  # say("<%= color('\t\t\t优惠\t#{discount}', YELLOW) %>")

  

   money=ask("\t\t\t\t\t\t实收\t", Float)
   puts("\t\t\t\t\t\t找零\t#{money-total}")
   say("<%= color('\n\t\t\t 谢谢惠顾！',:green) %>")
   say("<%= color('\t欢迎下次光临.请保留好您的小票，以便退换货物使用.',:green) %>")
   puts("\n\n\n")
 # bas.buy_good<<select
end
