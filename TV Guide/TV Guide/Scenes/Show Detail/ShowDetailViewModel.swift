//
//  ShowDetailViewModel.swift
//  TV Guide
//
//  Created by Thalisson da Rosa on 28/05/22.
//

import Foundation
import RxRelay

enum ShowDetailItem {
    case header
    case summary
}

protocol ShowDetailViewModel: AnyObject {
    var items: BehaviorRelay<[ShowDetailItem]> { get }
    var show: Show { get }
}

final class ShowDetailViewModelImpl: ShowDetailViewModel {
    let items = BehaviorRelay<[ShowDetailItem]>(
        value: [.header, .summary]
    )
    let show: Show

    init(show: Show) {
        self.show = show
    }
}
