class Myapp.AppController extends Batman.Controller
  constructor: ->
    @provinces = ["安徽", "北京"]
    regions = [
      "合肥,芜湖,蚌埠,淮南,马鞍山,淮北,铜陵,安庆,黄山,滁州,阜阳,宿州,巢湖,六安,亳州,池州,宣城",
      "东城区,西城区,崇文区,宣武区,朝阳区,丰台区,石景山区,海淀区,门头沟区,房山区,通州区,顺义区,昌平区,大兴区,怀柔区,平谷区,密云县,延庆县"
    ]
    @parsed_regions = (r.split(',') for r in regions)

  index: ->
    @set 'provinces', @provinces
    @set 'regions', @parsed_regions[0]

  provinceChanged: (node, event) ->
    idx = $(node).find(':selected').index()
    @set 'regions', @parsed_regions[idx]