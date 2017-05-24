10.times do |x|
   Blog.create!(
      title: "My Blog Post #{x}",
      body: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    ) 
end

puts "10 blog posts created"

5.times do |x|
    Skill.create!(
        title: "Rails #{x}",
        percent_utilized: 15
    )
end

puts "5 skills posts created"

9.times do |x|
    Portfolio.create!(
        title: "Portfolio title: #{x}",
        subtitle: "My greate service",
        body: "ere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum gen",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 porfolio created"