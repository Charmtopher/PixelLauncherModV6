.class Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field finalPlacedItems:Ljava/util/ArrayList;

.field private final ignoreMove:Z

.field private final itemsToPlace:Ljava/util/ArrayList;

.field lowestMoveCost:F

.field lowestWeightLoss:F

.field private final occupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final startY:I

.field final synthetic this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;I)V
    .locals 6

    .line 423
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 424
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 418
    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 428
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 429
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    .line 430
    iput-boolean p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    .line 431
    iput p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    .line 434
    iget-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 435
    return-void
.end method


# virtual methods
.method public final find()V
    .locals 3

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 439
    return-void
.end method

.method public final find(IFFLjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 450
    move/from16 v3, p1

    move/from16 v2, p2

    :goto_0
    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v4, v2, v4

    if-gez v4, :cond_17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_0

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    goto/16 :goto_c

    .line 455
    :cond_0
    iget-object v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 457
    iput v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 458
    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 461
    invoke-static/range {p4 .. p4}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$000(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    .line 462
    return-void

    .line 465
    :cond_1
    iget-object v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 466
    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 467
    iget v6, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 470
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget v10, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-gt v10, v9, :cond_d

    iget v10, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-le v10, v9, :cond_2

    goto/16 :goto_6

    .line 544
    :cond_2
    nop

    .line 549
    nop

    .line 551
    iget v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    const v13, 0x7fffffff

    move v14, v13

    move v15, v14

    :goto_1
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v12}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$100(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v12

    if-ge v10, v12, :cond_6

    .line 552
    const/4 v12, 0x0

    :goto_2
    iget-object v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v9}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v9

    if-ge v12, v9, :cond_5

    .line 553
    iget-object v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v9, v9, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v9, v9, v12

    aget-boolean v9, v9, v10

    if-nez v9, :cond_4

    .line 554
    iget-boolean v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v9, :cond_3

    .line 556
    const/4 v8, 0x0

    goto :goto_3

    .line 555
    :cond_3
    iget v9, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    sub-int/2addr v9, v12

    iget v11, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    sub-int/2addr v11, v12

    mul-int/2addr v9, v11

    iget v11, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v11, v10

    iget v8, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v8, v10

    mul-int/2addr v11, v8

    add-int v8, v9, v11

    .line 556
    :goto_3
    if-ge v8, v15, :cond_4

    .line 557
    nop

    .line 558
    nop

    .line 559
    nop

    .line 552
    move v15, v8

    move v14, v10

    move v13, v12

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p4

    const/4 v9, 0x1

    goto :goto_2

    .line 551
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p4

    const/4 v9, 0x1

    goto :goto_1

    .line 565
    :cond_6
    iget-object v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v8}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v8

    if-ge v13, v8, :cond_b

    iget-object v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v8}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$100(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v8

    if-ge v14, v8, :cond_b

    .line 566
    nop

    .line 567
    if-eq v13, v5, :cond_7

    .line 568
    iput v13, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 569
    const/high16 v8, 0x3f800000    # 1.0f

    add-float v9, v1, v8

    goto :goto_4

    .line 571
    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v1

    :goto_4
    if-eq v14, v6, :cond_8

    .line 572
    iput v14, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 573
    add-float/2addr v9, v8

    .line 575
    :cond_8
    iget-boolean v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v8, :cond_9

    .line 576
    nop

    .line 578
    move v9, v1

    :cond_9
    iget-object v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 579
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v2, v9, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 580
    iget-object v7, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 581
    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 582
    iput v6, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 590
    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    .line 591
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v5, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v6, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    iget-boolean v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-nez v5, :cond_a

    .line 592
    iget v4, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float/2addr v2, v4

    goto/16 :goto_0

    .line 594
    :cond_a
    return-void

    .line 596
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 597
    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v5, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float/2addr v2, v5

    goto :goto_5

    .line 599
    :cond_c
    iget-object v3, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float/2addr v2, v4

    goto/16 :goto_0

    .line 478
    :cond_d
    :goto_6
    iget v8, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 479
    iget v9, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 481
    iget v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    :goto_7
    iget-object v11, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v11}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$100(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v11

    if-ge v10, v11, :cond_16

    .line 482
    const/4 v11, 0x0

    :goto_8
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v12}, Lcom/android/launcher3/model/GridSizeMigrationTask;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v12

    if-ge v11, v12, :cond_15

    .line 483
    nop

    .line 484
    if-eq v11, v5, :cond_e

    .line 485
    iput v11, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 486
    const/high16 v12, 0x3f800000    # 1.0f

    add-float v13, v1, v12

    goto :goto_9

    .line 488
    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v1

    :goto_9
    if-eq v10, v6, :cond_f

    .line 489
    iput v10, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 490
    add-float/2addr v13, v12

    .line 492
    :cond_f
    iget-boolean v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v12, :cond_10

    .line 493
    nop

    .line 496
    move v13, v1

    :cond_10
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12, v11, v10, v8, v9}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 498
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x1

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 499
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v0, v12, v2, v13, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 500
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 504
    :cond_11
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    if-le v8, v12, :cond_12

    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v12, v11, v10, v14, v9}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 505
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 506
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 508
    add-int/lit8 v12, v3, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v14, v13, v15

    invoke-virtual {v0, v12, v2, v14, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 509
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 510
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    const/4 v14, 0x1

    add-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 514
    :cond_12
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    if-le v9, v12, :cond_13

    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v12, v11, v10, v8, v14}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 515
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 516
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 518
    add-int/lit8 v12, v3, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v14, v13, v15

    invoke-virtual {v0, v12, v2, v14, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 519
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 520
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    const/4 v14, 0x1

    add-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    goto :goto_a

    .line 524
    :cond_13
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_a
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    if-le v9, v12, :cond_14

    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    if-le v8, v12, :cond_14

    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v14, v8, -0x1

    add-int/lit8 v15, v9, -0x1

    .line 525
    invoke-virtual {v12, v11, v10, v14, v15}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 526
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 527
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    sub-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 528
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12, v4, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 530
    add-int/lit8 v12, v3, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v13, v14

    invoke-virtual {v0, v12, v2, v13, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 531
    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 532
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    const/4 v14, 0x1

    add-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 533
    iget v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    goto :goto_b

    .line 535
    :cond_14
    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_b
    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 536
    iput v6, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 481
    :cond_15
    const/4 v13, 0x0

    const/4 v14, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 543
    :cond_16
    add-int/lit8 v3, v3, 0x1

    iget v4, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float/2addr v2, v4

    goto/16 :goto_0

    .line 453
    :cond_17
    :goto_c
    return-void
.end method
