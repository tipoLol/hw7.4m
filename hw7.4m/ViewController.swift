//
//  ViewController.swift
//  hw7.4m
//
//  Created by Мухамед on 23/4/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var calcLogic = Logic()
    
    // MARK: - UI Elements
    private lazy var displayLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 90)
        label.textColor = .white
        label.text = "0"
        return label
    }()
    //MARK: - row1
    private lazy var ac: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(clearButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var change: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(extraOperationButotnTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var procent: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(extraOperationButotnTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var divide: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(operatorButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    //MARK: -row2
    private lazy var seven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var eight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var nine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var multiply: UIButton = {
        let button = UIButton()
        button.setTitle("*", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(operatorButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    //MARK: -row3
    private lazy var four: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var five: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var six: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var minus: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(operatorButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    //MARK: -row4
    private lazy var one: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var two: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var three: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var plus: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(operatorButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    //MARK: -row5
    private lazy var ziro: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(digitButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var point: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(extraOperationButotnTapped(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var equal: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(equalButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        print(view.widthAnchor)
        
    }
    
    // MARK: - view
    private func setupUI() {
        view.backgroundColor = .black
        view.addSubview(displayLabel)
        view.addSubview(ac)
        view.addSubview(change)
        view.addSubview(procent)
        view.addSubview(divide)
        view.addSubview(seven)
        view.addSubview(eight)
        view.addSubview(nine)
        view.addSubview(multiply)
        view.addSubview(four)
        view.addSubview(five)
        view.addSubview(six)
        view.addSubview(minus)
        view.addSubview(one)
        view.addSubview(two)
        view.addSubview(three)
        view.addSubview(plus)
        view.addSubview(ziro)
        view.addSubview(point)
        view.addSubview(equal)
        displayLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(150)
        }
        // MARK: - constraint
        ac.snp.makeConstraints { make in
            make.top.equalTo(displayLabel.snp.bottom)
            make.width.height.equalTo(87)
            make.leading.equalToSuperview().inset(5)
        }
        
        change.snp.makeConstraints { make in
            make.top.equalTo(displayLabel.snp.bottom)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(105)
        }
        
        procent.snp.makeConstraints { make in
            make.top.equalTo(displayLabel.snp.bottom)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(205)
        }
        
        divide.snp.makeConstraints { make in
            make.top.equalTo(displayLabel.snp.bottom)
            make.width.height.equalTo(87)
            make.leading.equalToSuperview().inset(305)
        }
        
        seven.snp.makeConstraints { make in
            make.top.equalTo(ac.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(5)
        }
        
        eight.snp.makeConstraints { make in
            make.top.equalTo(ac.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(105)
        }
        
        nine.snp.makeConstraints { make in
            make.top.equalTo(ac.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(205)
        }
        
        multiply.snp.makeConstraints { make in
            make.top.equalTo(ac.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(305)
        }
        //MARK: -row3
        
        four.snp.makeConstraints { make in
            make.top.equalTo(seven.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(5)
        }
        
        five.snp.makeConstraints { make in
            make.top.equalTo(seven.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(105)
        }
        
        six.snp.makeConstraints { make in
            make.top.equalTo(seven.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(205)
        }
       
        minus.snp.makeConstraints { make in
            make.top.equalTo(seven.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(305)
        }
        
        one.snp.makeConstraints { make in
            make.top.equalTo(four.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(5)
        }
        two.snp.makeConstraints { make in
            make.top.equalTo(four.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(105)
        }
       
        three.snp.makeConstraints { make in
            make.top.equalTo(four.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(205)
        }
        
        plus.snp.makeConstraints { make in
            make.top.equalTo(four.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(305)
        }
        
        ziro.snp.makeConstraints { make in
            make.top.equalTo(one.snp.bottom).offset(10)
            make.height.equalTo(90)
            make.width.equalTo(190)
            make.leading.equalToSuperview()
        }
        view.addSubview(point)
        point.snp.makeConstraints { make in
            make.top.equalTo(one.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(205)
        }
        view.addSubview(equal)
        equal.snp.makeConstraints { make in
            make.top.equalTo(one.snp.bottom).offset(10)
            make.width.height.equalTo(90)
            make.leading.equalToSuperview().inset(305)
        }
        
        
    }
    var num1 = ""
    var num2 = ""
    var operation = ""
    var flag = true
    
    // MARK: - Button Actions
    
    @objc private func digitButtonTapped(_ sender: UIButton) {
        guard let digit = sender.titleLabel?.text else { return }
        var currentText = ""
        if displayLabel.text != "0" && flag != false{
            currentText = displayLabel.text ?? ""
        }
        displayLabel.text = currentText + digit
        flag = true
    }
    @objc private func operatorButtonTapped(_ sender: UIButton) {
        guard let operatorSymbol = sender.titleLabel?.text else { return }
        operation = operatorSymbol
        num1 = displayLabel.text ?? ""
        displayLabel.text = operatorSymbol
        flag = false
    }
    
    @objc private func clearButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    @objc private func extraOperationButotnTapped(_ sender: UIButton) {
       //
    }
    
    @objc private func equalButtonTapped(_ sender: UIButton) {
        
        num2 = displayLabel.text ?? ""
        displayLabel.text = calcLogic.equal(num1: num1, num2: num2, operation: operation)
        
    }
    private func logic() {
        
    }
}

