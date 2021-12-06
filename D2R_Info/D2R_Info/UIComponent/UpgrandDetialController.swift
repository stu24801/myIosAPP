//
//  upgrandeViewController.swift
//  D2R_Info
//
//  Created by Alex on 2021/11/13.
//  Copyright © 2021 stu24801. All rights reserved.
//

import UIKit

@objc protocol SquareViewDelegate {
    func detialReturn(message:String)
}
class UpgrandDetialController: UITableViewController {
   

    var type:Int = 0
    
    
    var runeFunction = ["3個艾爾(1)=1個艾德(2)","3個艾德(2)=1個;特爾(3)","3個特爾(3)=1個那夫(4)","3個那夫(4)=1個愛斯(5)","3個愛斯(5)=1個伊司(6)","3個伊司(6)=1個塔爾(7)","3個塔爾(7)=1個拉爾(8)","3個拉爾(8)=1個歐特(9)","3個歐特(9)=1個書爾(10)","3個書爾(10)+1個碎裂的黃寶石=1個安姆(11)","3個安姆(11)+1個碎裂的紫寶石=1個索爾(12)","3個索爾(12)+1個碎裂的藍寶石=1個夏(13)","3個夏(13)+1個碎裂的紅寶石=1個多爾(14)","3個多爾(14)+1個碎裂的綠寶石=1個海爾(15)","3個海爾(15)+1個碎裂的鑽石=1個埃歐(16)","3個埃歐(16)+1個裂開的黃寶石=1個盧姆(17)","3個盧姆(17)+1個裂開的紫寶石=1個科(18)","3個科(18)+1個裂開的藍寶石=1個法爾(19)","3個法爾(19)+1個裂開的紅寶石=1個藍姆(20)","3個藍姆(20)+1個裂開的綠寶石=1個普爾(21)","2個普爾(21)+1個裂開的鑽石=1個烏姆(22)","2個烏姆(22)+1個黃寶石=1個馬爾(23)","2個馬爾(23)+1個紫寶石=1個依斯特(24)","2個依斯特(24)+1個藍寶石=1個古爾(25)","2個古爾(25)+1個紅寶石=1個伐克斯(26)","2個伐克斯(26)+1個綠寶石=1個歐姆(27)","2個歐姆(27)+1個鑽石=1個羅(28)","2個羅(28)+1個無瑕疵的黃寶石=1個瑟(29)","2個瑟(29)+1個無瑕疵的紫寶石=1個貝(30)","2個貝(30)+1個無瑕疵的藍寶石=1個喬(31)","2個喬(31)+1個無瑕疵的紅寶石=1個查姆(32)","2個查姆(32)+1個無瑕疵的綠寶石=1個薩德(33)"]
    var upgrande1 = [
        "塔爾(Tal) + 夏 (Shael)+ 完美的鑽石（Perfect Diamond）+ 一般獨特防具 = 防具的進階版本",
        "科 (Ko) + 藍姆(Lem) + 完美的鑽石（Perfect Diamond） + 進階獨特防具 = 防具的菁英版本 (天梯)",
        "拉爾(Ral) + 索爾(Sol) + 完美的綠寶石 （Perfect Emerald）+ 一般獨特武器 = 武器的進階版本",
        "盧姆(Lum) + 普爾(Pul) + 完美的綠寶石（Perfect Emerald） + 進階獨特武器 = 武器的菁英版本 (天梯)"
    
    ]
    var upgrande2 = [
        "歐特(Ort) + 安姆(Amn) + 完美的藍寶石（Perfect Sapphire）+ 一般稀有武器 = 武器的進階版本",
        "法爾(Fal) + 烏姆(Um) + 完美的藍寶石（Perfect Sapphire）+ 進階稀有武器 = 武器的精英版本",
        "拉爾(Ral) + 書爾(Thul) + 完美的紫寶石（Perfect Amethyst）+ 一般稀有防具 = 防具的進階版本",
        "科 (Ko) + 普爾(Pul) + 完美的紫寶石（Perfect Amethyst）+ 進階稀有防具 = 防具的精英版本"
    ]
    var upgrande3 = [
        "4瓶治療藥劑(任何)+紅寶石(任何)+魔法/成套/稀有 劍類武器(任何)=一把同類型的劍類武器擁有吸血屬性",
        "3個戒指 = 1個隨機的護身符(項鍊)",
        "3個護身符(項鍊)=1個隨機的戒指",
        "3個碎裂的寶石+1把劍類武器(任何)=1把有魔法屬性同類型的劍",
        "2 捆十字弓彈=1捆箭矢",
        "1面小盾牌(藍色以上)+狼芽棒(任何)+兩顆骷髏(任何)=一個帶有針刺屬性(反彈傷害)的盾牌",
        "1顆鑽石(任何)+1把長棍(任何)+1把波形刀(任何)+1條腰帶(任何)=長柄類武器(ex:大砍刀)",
        "3個標準的寶石+任何有凹槽的武器=相同型態有凹槽的魔法武器",
        "3個無瑕疵的寶石+魔法武器=有凹槽的魔法武器",
        "3個完美的寶石或完美的骷髏+魔法物品=新的魔法物品(包括小中大符、珠寶)",
        "6個完美的骷髏+稀有物品=新的稀有物品"
    ]
    
    var upgrande4 = [
        "(act2)國王之杖+腹蛇護符=赫拉迪克之杖",
        "(act3)克林姆的眼球+大腦+心臟+連枷=克林姆的意志",
        "(cow)維特之腳+城鎮傳送之書=秘密母牛關卡的紅門",
        "(torch)毀滅之鑰+恐懼之鑰+憎恨之鑰=隨機一個通往主母巢穴、痛苦鎔爐、遺忘沙漠的紅門",
        "(torch)莫非斯托之腦+暗黑破壞神之角+巴爾之眼=通往崔斯特瑞姆的紅門"
    ]
    
    var upgrande5 = [
        "三罐恢復活力藥劑 = 一罐全面恢復活力藥劑（100﹪的生命和法力）",
        "三瓶治療藥劑(任何) + 三瓶法力藥劑(任何) + 一枚寶石 (任何) = 一罐恢復活力藥劑（33﹪的生命和法力）",
        "窒息瓦斯藥劑 + 治療藥劑(任何） = 一瓶解毒藥劑"
    ]
    
    var upgrande6=[
        "盔甲=塔爾(7)+書爾(10)+完美的黃寶石",
        "武器=拉爾(8)+安姆(11)+完美的紫寶石",
        "頭部=拉爾(8)+書爾(10)+完美的藍寶石",
        "盾牌=塔爾(7)+安姆(11)+完美的紅寶石"
    ]
    
    var upgrande7=[
        "艾爾(1)+碎裂的寶石+低品質盔甲=相同型態的一般品質盔甲",
        "艾德(2)+碎裂的寶石+低品質武器=相同型態的一般品質武器",
        "歐特(9)+武器=修復武器，但不修復聚氣",
        "歐特(9)+武器+碎裂的寶石=修復完全的武器",
        "拉爾(8)+防具=修復防具，但不修復聚氣",
        "拉爾(8)+防具+裂開的寶石=修復完全的防具"
    ]
    
    var squareCell = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "TypeController") as! SquareViewController


        controller.delegate = self
        squareCell = [self.runeFunction,self.upgrande1,self.upgrande2,self.upgrande3,self.upgrande4,self.upgrande5,self.upgrande6,self.upgrande7]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return squareCell[type].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detialCell", for: indexPath)

        cell.textLabel?.text=String(squareCell[type][indexPath.row]).trimmingCharacters(in: .whitespacesAndNewlines)
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //使用print()顯示出被點擊Cell的小節（section）與項目序號（row）
        print("你點擊了",indexPath.section,"-",indexPath.row)
        //取消選取的動畫
        tableView.deselectRow(at: indexPath, animated: true)
    }


 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UpgrandDetialController: SquareViewDelegate{
    func detialReturn(message:String){
     
        
        print(String("回傳訊息：") + message)
        
    }
}
