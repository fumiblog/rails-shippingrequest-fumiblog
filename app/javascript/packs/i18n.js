import I18n from './i18n-js/index.js.erb'
I18n.locale = 'ja'
export function t(arg) {
  return I18n.t(arg)
}
