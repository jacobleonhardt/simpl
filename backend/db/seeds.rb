User.create({
  name: 'Playswith Squirrels',
  email: 'test@gmail.com',
  password_digest: 'testing123',
  highest_lesson_completed: 1,
})

User.create({
  name: 'Test',
  email: 'BAM@test.com',
  password_digest: 'it_worked',
  highest_lesson_completed: 50,
})

p "Data Seeded"
