json.students do
json.array!(@students) do |student|
  json.cohort student.cohorts.last
  json.name student.name
  json.fun_fact student.fun_fact
  json.profile_image Refile.attachment_url(student, :profile_image, :fill, 500, 500, format: 'png')
  json.thumbnail_image Refile.attachment_url(student, :profile_image, :fill, 100, 100, format: 'png')
end
end
