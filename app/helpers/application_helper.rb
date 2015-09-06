module ApplicationHelper
  FORM_QUESTION_ID_PREFIX = 'questions['
  FROM_QUESTION_ID_SUFFIX = ']'
  NUS_OPEN_ID_PATH = 'https://openid.nus.edu.sg/auth'

  def javascript(*files)
    content_for(:js_head) { javascript_include_tag(*files) }
  end

  def omniauth_authorize_path(provider)
    if provider.to_s == 'open_id'
      NUS_OPEN_ID_PATH
    end
  end

  def get_question_name(question)
    return FORM_QUESTION_ID_PREFIX + question.id.to_s + FROM_QUESTION_ID_SUFFIX
  end
end
