# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

long_text = File.read(File.join(Rails.root, '/features/support/long_text.txt'))
# title  = File.read(File.join(Rails.root, '/features/support/titles/title-' + '%s' + '.txt'))
title_url = '/features/support/titles/title-' + '%s' + '.txt'
title_pack  = File.read(File.join(Rails.root, '/features/support/packs/title-1.txt'))


#############################################################################
# Slide Model
#############################################################################
Slide.delete_all
Slide.create(
  :slide => File.open(File.join(Rails.root, '/features/support/img-slide.jpg')))

Slide.create(
  :slide => File.open(File.join(Rails.root, '/features/support/img-slide-2.jpg')))


#############################################################################
# Milestone Model
#############################################################################
Milestone.delete_all
1.upto(10) do |i|
  Milestone.create(
    :title => 'Premio ' + "#{i}" +' a la mejor agencia de viajes',
    :description => 'Texto que complementa el título Mejor servicio imposible',
    :milestone_picture => File.open(File.join(Rails.root, '/features/support/milestone_picture.jpg')))
  
  Milestone.create(
    :title => 'Avión de Oro 2012',
    :description => 'Galardón otorgado por haber recibido la mayor cantidad de turistas desde distintas partes del mundo.',
    :milestone_picture => File.open(File.join(Rails.root, '/features/support/milestone_picture2.jpg')))
end
#############################################################################
# Member Model
#############################################################################
Member.delete_all
1.upto(6) do |i|
  Member.create(
  :name => 'Marta Lopez',
  :email => 'marta@infinity.com',
  :position => 'Finances Operator',
  :description => long_text,
  :member_picture => File.open(File.join(Rails.root, '/features/support/member_picture.jpg')))
  Member.create(
  :name => 'Rafaela Perez',
  :email => 'raffaela@infinity.com',
  :position => 'Travel Advisor',
  :description => long_text,
  :member_picture => File.open(File.join(Rails.root, '/features/support/member_picture2.jpg')))
end

#############################################################################
# Packs Model
#############################################################################
Pack.delete_all
1.upto(4) do |i|
  Pack.create(
    :title =>  File.read(File.join(Rails.root, '/features/support/packs/title-' + "#{i}" + '.txt')),
    :description => long_text,
    :pack_picture => File.open(File.join(Rails.root, '/features/support/pack_picture.jpg'))
  )
end

#############################################################################
# Post Model
#############################################################################
Post.delete_all
Post.create(
  :title => 'Feriado largo generará millones por actividad turística',
  :content => 'Artículo textual de la noticia Feriado largo generará millones por actividad turística',
  :important => true,
  :landing_page => true,
  :posts_picture => File.open(File.join(Rails.root, '/features/support/post_picture.jpg')))

Post.create(
  :title => 'Se incrementó la taza de los intereses en los peajes de colectivos',
  :content => 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words',
  :important => false,
  :landing_page => false,
  :posts_picture => File.open(File.join(Rails.root, '/features/support/post_picture2.jpg')))

#############################################################################
# PressReleases Model
#############################################################################
PressRelease.delete_all
1.upto(4) do |i|
  PressRelease.create(
    #:title => File.read(File.join(Rails.root, '/features/support/titles/title-' + "#{i}" + '.txt')),
    :title => File.read(File.join(Rails.root, "#{title_url %i}")),
    :content => long_text
  )
end

#############################################################################
# Testimonies Model
#############################################################################
Testimony.delete_all
Testimony.create(
  :name => 'Pedro Perez',
  :description => 'Me brindaron un servicio de maravilla.',
  :landing_page => false,
  :testimony_picture => File.open(File.join(Rails.root, '/features/support/testimony_picture.jpg')))

Testimony.create(
  :name => 'Roberto Contreras',
  :description => 'La atención fue muy especial.',
  :landing_page => true,
  :testimony_picture => File.open(File.join(Rails.root, '/features/support/testimony_picture2.jpg')))

#############################################################################
# Abouts Model
#############################################################################
About.delete_all
About.create(
  :title_landing_page => 'Luxury Travel with Infinity Peru',
  :text_landing_page => long_text,
  :history => long_text,
  :global_proyection => long_text,
  :picture_landing_page => File.new(File.join(Rails.root, '/features/support/about_picture.jpg')),
  :about_picture => File.new(File.join(Rails.root, '/features/support/about_picture.jpg')),
  :global_proyection_picture => File.new(File.join(Rails.root, '/features/support/about_picture.jpg')))

