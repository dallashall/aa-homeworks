require_relative "position_error"
require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    place_stones(@cups)
    @name1 = name1
    @name2 = name2
  end

  def place_stones(arr)
    arr.map!.with_index do |variable, idx|
      idx != 6 && idx != 13 ? Array.new(4) { :stone } : variable
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 6) || start_pos.between?(8, 13)
    true
  end

  def make_move(start_pos, current_player_name)
    idx = start_pos + 1
    start_cup = @cups[start_pos]
    loop do
      break if start_cup.empty?
      nxt_cup = @cups[idx]
      nxt_cup.push(start_cup.shift) unless idx == cup_to_skip(current_player_name)
      idx += 1
      idx = idx > 13 ? idx % 14 : idx
    end
    render
    next_turn(idx - 1, current_player_name)
  end

  def cup_to_skip(current_player_name)
    current_player_name == @name1 ? 13 : 6
  end

  def current_player_bank(current_player_name)
    current_player_name == @name1 ? 6 : -1
  end

  def current_range(current_player_name)
    current_player_name == @name1 ? [0, 6] : [7, 13]
  end

  def next_turn(ending_cup_idx, current_player_name)
    # byebug
    if ending_cup_idx == current_player_bank(current_player_name)
      :switch
    elsif ending_cup_idx.between?(*current_range(current_player_name))
      :switch
    elsif @cups[ending_cup_idx].length == 1
      :prompt
    elsif @cups[ending_cup_idx].length > 1
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    name1_bank = @cups[current_player_bank(@name1)]
    name2_bank = @cups[current_player_bank(@name2)]
    return :draw if name1_bank == name2_bank
    name1_bank.length > name2_bank.length ? @name1 : @name2
  end
end
