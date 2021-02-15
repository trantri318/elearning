# frozen_string_literal: true

ActiveRecord::Schema.define(version: 202_003_221_513_31) do
  create_table 'activities', force: :cascade do |t|
    t.string 'target_id'
    t.string 'user_id'
    t.string 'action_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'lesson_words', force: :cascade do |t|
    t.string 'lesson_id'
    t.string 'word_id'
    t.string 'word_answer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'lessons', force: :cascade do |t|
    t.string 'user_id'
    t.string 'category_id'
    t.string 'result'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'relationships', force: :cascade do |t|
    t.string 'following_id'
    t.string 'follwer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'name'
    t.string 'password_digest'
    t.string 'avatar'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'word_answers', force: :cascade do |t|
    t.string 'content'
    t.string 'word_id'
    t.string 'correct'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'words', force: :cascade do |t|
    t.string 'content'
    t.string 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
