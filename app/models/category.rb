class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '運動' },
    { id: 3, name: '知識' },
    { id: 4, name: '外見' },
    { id: 5, name: '人格' },
    { id: 6, name: '胆力' },
    { id: 7, name: 'その他' }
  ]
end
