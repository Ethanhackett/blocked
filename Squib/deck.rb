require 'squib'
# require 'pp'

data = Squib.xlsx file: 'blocked.xlsx'
num_cards = data['Name'].size #dynamic count by name

colors = ['#e74c3c','#1abc9c','#3498db','#9b59b6','#34495e']



Squib::Deck.new(width: 187, height: 187, cards: num_cards, layout: 'layout.yml') do
  enable_build :pnp

  background color: data['Background']

  rect fill_color: '#fff', stroke_width: 0, width: 169, height: 169, x: 9, y: 9

  tops = data['Top']
  range = tops.each_index.select { |i| tops[i]}
  rect fill_color: '#fff', stroke_width: 0, radius: 25, layout: :top, range: range
  text str: data['Top'], layout: :top, range: range, color: data['Background']

  # Right Section
  rights = data['Right']
  range = rights.each_index.select { |i| rights[i]}
  rect fill_color: '#fff', stroke_width: 0, radius: 25, layout: :right, range: range
  x_range = rights.each_index.select { |i| rights[i] == 'x'}
    text str: data['Right'], layout: :right, range: x_range, color: data['Background']
  r_range = rights.each_index.select { |i| rights[i] == 'R'}
    png file: 'img/ra.png', width: 23, height: 23, x: 142, y: 82, range: r_range
  l_range = rights.each_index.select { |i| rights[i] == 'L'}
    png file: 'img/la.png', layout: :right, width: 23, height: 23, x: 137, y: 82, range: l_range


  bottoms = data['Bottom']
  range = bottoms.each_index.select { |i| bottoms[i]}
  rect fill_color: '#fff', stroke_width: 0, radius: 25, layout: :bottom, range: range
  text str: data['Top'], layout: :bottom, range: range, color: data['Background']


  lefts = data['Left']
  range = lefts.each_index.select { |i| lefts[i]}
  rect fill_color: '#fff', stroke_width: 0, radius: 25, layout: :left, range: range
  x_range = rights.each_index.select { |i| lefts[i] == 'x'}
    text str: data['Left'], layout: :left, range: x_range, color: data['Background']
  r_range = rights.each_index.select { |i| lefts[i] == 'R'}
    png file: 'img/ra.png', width: 23, height: 23, x: 25, y: 82, range: r_range
  l_range = rights.each_index.select { |i| lefts[i] == 'L'}
    png file: 'img/la.png', layout: :right, width: 23, height: 23, x: 19, y: 82, range: l_range

  save format: :png
  save_pdf file: 'color-pp.pdf', crop_marks: false, trim: 0, gap: 2, margin: 130
end


# Squib::Deck.new do
#   enable_build :pnp
#   build :pnp do
#     save_pdf
#   end
#   puts build_groups
# end
