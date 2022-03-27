if user_signed_in?
  json.array! @heads do |head|
    # json.id head.id
    json.start head.ship_date
    json.title head.construction.name + " 納品"
  end
else
  json.array! @heads do |head|
    # json.id head.id
    json.start head.ship_date
    json.title "(" + head.user.name + ")" + head.construction.name + " 納品"
  end
end



json.array! @job_incompletes do |job|
  # json.id String{Number(@job.id) + 10000}
  json.start job.date
  json.title job.person.company.name + job.type_i18n + job.content
end
