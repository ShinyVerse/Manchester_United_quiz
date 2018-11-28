feature 'United Quiz' do
  scenario 'Testing whole page easy' do
    easy_sign
    click_button '1999'
    click_button 'Next Question'
    click_button 'Wayne Rooney'
    click_button 'Next Question'
    click_button 'Sir Alex Ferguson'
    click_button 'Next Question'
    click_button '20'
    click_button 'Next Question'
    click_button 'Wayne Rooney'
    click_button 'Next Question'
    click_button '3'
    click_button 'Next Question'
    click_button 'Newton Heath'
    click_button 'Next Question'
    click_button 'Bayern Munich'
    click_button 'Next Question'
    click_button 'Eric Cantona'
    click_button 'Next Question'
    click_button '2-1'
    click_button 'Next Question'
    click_button 'Leeds United'
    click_button 'Next Question'
    click_button 'Paul Pogba'
    click_button 'Next Question'
    click_button '12'
    click_button 'Next Question'
    click_button '1958'
    click_button 'Next Question'
    click_button 'Ole Gunnar Solskjaer'
    click_button 'Next Question'
    click_button 'The Busby Babes'
    click_button 'Next Question'
    click_button '9-0'
    click_button 'Next Question'
    click_button 'Old Trafford'
    click_button 'Next Question'
    click_button '13'
    click_button 'Next Question'
    click_button 'Liverpool'
    click_button 'Next Question'
    click_button '3'
    click_button 'Next Question'
    click_button 'Wimbledon'
    click_button 'Next Question'
    click_button '1986'
    click_button 'Next Question'
    click_button '1878'
    click_button 'Next Question'
    click_button '4-1'
    click_button 'Get Results'
    expect(page).to have_content 'You got 25 out of 25 correct!'
  end
end