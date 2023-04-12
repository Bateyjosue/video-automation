template = DescriptionTemplate.create(
  template: 'Template test',
  name: 'Template Name'
)

pres_1 = Presenter.create(
  name: 'Tony Stark',
  twitter_handle: 'tonystart',
  linked_in: "tony",
  role: 'Super Hero'
)

pres_2 = Presenter.create(
  name: 'Steven',
  twitter_handle: 'steven',
  linked_in: "steven",
  role: 'Minecrafter'
)

video = Video.create!(
  youtube_id: 'mn5ODwJqmZs',
  title: 'Test VIdeo',
  tags: ['tags1', 'tags2', 'tags3'],
  chapter_markers: '00:00 start',
  description_template: template,
  presenters: [pres_1, pres_2]
)