json.extract! @student, :id, :name, :fun_fact, Refile.attachment_url(@student, :profile_image), :email, :created_at, :updated_at
