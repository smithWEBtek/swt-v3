class Post < ApplicationRecord

  # def render_body(file)
  #   if file.nil?
  #     "no blog.md file exists"
  #   else
  #     file_path = "#{Rails.root}"+"/app/assets/blogs/"+"#{file}"
  #     markdown(File.read(file_path))
  #   end
  # end
end
