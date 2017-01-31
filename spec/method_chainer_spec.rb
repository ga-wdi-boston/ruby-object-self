# frozen_string_literal: true

require_relative '../lib/method_chainer.rb'

describe 'MethodChainer' do
  before(:each) do
    @method_chainer = MethodChainer.new('A string')
  end

  it 'reverses a string and returns it' do
    expect(@method_chainer.reverse!).to eq('gnirts A')
  end

  it 'capitalizes a string (returns self)' do
    expect(@method_chainer.caps!.content).to eq('A STRING')
  end

  it 'doubles a string (returns self)' do
    expect(@method_chainer.double!.content).to eq('A stringA string')
  end
end
