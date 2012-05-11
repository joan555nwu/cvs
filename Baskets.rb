require "highline/import"
#require "promotion"
class Baskets
  attr:buy_good,true
  attr:buy_num,true
# include Pro
  def initialize 
     @buy_good=[]
     @buy_num=[]
  end
  def add (good,num)
     @buy_good.push(good)
     @buy_num.push(num)
  end
  def display
      total=0
      puts"\n\n\n\n\n\n\n\n\n\n"
      puts"\t\t"
      say("<%= color('\t\t     半分利便利店   第九分店\n',:green,:bold) %>")
      t=Time.now
      puts "#{t.strftime("%Y年%m月%d日  %H:%M:%S")}"
      puts("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~打印小票~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
      puts"\t商品编号\t商品名称\t数量\t单价\t小计"
      for i in 0 ...@buy_good.length
          total=total+@buy_good[i].price.to_f*@buy_num[i]
       if @buy_good[i].name.length>9
             if @buy_good[i].id=="148"
             puts "\t#{@buy_good[i].id}\t\t#{@buy_good[i].name}\t#{@buy_num[i]}\t#{@buy_good[i].price}\t#{@buy_num[i]/3*@buy_good[i].price.to_f*2+@buy_num[i]%3*@buy_good[i].price.to_f}(特价商品)"
             else
             puts "\t#{@buy_good[i].id}\t\t#{@buy_good[i].name}\t#{@buy_num[i]}\t#{@buy_good[i].price}\t#{@buy_good[i].price.to_f*@buy_num[i]}"
             end
       else
             if @buy_good[i].id=="148"
             puts "\t#{@buy_good[i].id}\t\t#{@buy_good[i].name}\t\t#{@buy_num[i]}\t#{@buy_good[i].price}\t#{@buy_num[i]/3*@buy_good[i].price.to_f*2+@buy_num[i]%3*@buy_good[i].price.to_f}(特价商品)"
             else
             puts "\t#{@buy_good[i].id}\t\t#{@buy_good[i].name}\t\t#{@buy_num[i]}\t#{@buy_good[i].price}\t#{@buy_good[i].price.to_f*@buy_num[i]}"
             end
       end
      end
      puts("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
      #promotion
      return total
  end
end
