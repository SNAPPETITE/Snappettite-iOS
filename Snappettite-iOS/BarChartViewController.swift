//
//  BarChartViewController.swift
//  Snappettite-iOS
//
//  Created by davidhan on 16/4/25.
//  Copyright © 2016年 Shotaro Ikeda. All rights reserved.
//

import UIKit
import Charts

class BarChartViewController: ViewController {
    
    @IBOutlet weak var barChartView: BarChartView!
    
    var nutrient: [String]!
    var detailNutrient: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nutrient = ["Calories", "Fat", "Carbs", "Sugars", "Protein"]
        detailNutrient = ["Calories", "Fat", "Transfat", "Chol", "Sodium", "Carbs", "Dietary Fiber", "Sugars", "Protein", "Calcium", "Iron"]
        let thisMeal = [drand48()*20, drand48()*20, drand48()*20, drand48()*20, drand48()*20]
        
        setChart(nutrient, values: thisMeal)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //set a chart (with random data right now)
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "MG in your meal")
        let chartData = BarChartData(xVals: nutrient, dataSet: chartDataSet)
        barChartView.data = chartData
        
        barChartView.descriptionText = ""
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
