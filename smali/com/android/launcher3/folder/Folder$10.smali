.class Lcom/android/launcher3/folder/Folder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 19

    move-object/from16 v0, p0

    .line 708
    iget-object v1, v0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v2, v2, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v3, v0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v3, v3, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v4

    iget v5, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v5, v3, v5

    iget v6, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v6, v3, v6

    if-eq v5, v4, :cond_0

    const-string v5, "FolderPagedView"

    const-string v7, "Cannot animate when the target cell is invisible"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v5, v2, v5

    iget v7, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v7, v2, v7

    if-eq v3, v2, :cond_b

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v3, v2, :cond_2

    if-ge v7, v4, :cond_1

    iget v3, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v8, v4, v3

    move v5, v9

    :goto_0
    move v3, v10

    goto :goto_1

    :cond_1
    move v2, v8

    goto :goto_0

    :cond_2
    if-le v7, v4, :cond_3

    add-int/lit8 v3, v4, 0x1

    iget v5, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v3, v5

    sub-int/2addr v3, v10

    iget v5, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    sub-int/2addr v5, v10

    move/from16 v18, v8

    move v8, v3

    move/from16 v3, v18

    goto :goto_1

    :cond_3
    move v2, v8

    move v3, v2

    :goto_1
    if-eq v2, v8, :cond_8

    add-int v7, v2, v3

    iget v11, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v11, v7, v11

    iget v12, v1, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v12, v7, v12

    iget v13, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v13, v12, v13

    iget v14, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v12, v14

    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    invoke-virtual {v14, v13, v12}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_7

    if-eq v4, v11, :cond_4

    invoke-virtual {v14, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v12, v11, v2}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v11

    new-instance v13, Lcom/android/launcher3/folder/FolderPagedView$1;

    invoke-direct {v13, v1, v12, v11, v2}, Lcom/android/launcher3/folder/FolderPagedView$1;-><init>(Lcom/android/launcher3/folder/FolderPagedView;Landroid/view/View;FI)V

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-lez v3, :cond_5

    move v11, v10

    goto :goto_2

    :cond_5
    move v11, v9

    :goto_2
    iget-boolean v14, v1, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v11, v14

    if-eqz v11, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    :goto_3
    int-to-float v11, v11

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v14, 0xe6

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, v1, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_5
    move v2, v7

    goto :goto_1

    :cond_8
    sub-int v2, v6, v5

    mul-int/2addr v2, v3

    if-lez v2, :cond_b

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    const/high16 v4, 0x41f00000    # 30.0f

    :goto_6
    if-eq v5, v6, :cond_b

    add-int v7, v5, v3

    iget v8, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v8, v7, v8

    iget v10, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v10, v7, v10

    invoke-virtual {v2, v8, v10}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    iget v10, v8, Lcom/android/launcher3/ItemInfo;->rank:I

    sub-int/2addr v10, v3

    iput v10, v8, Lcom/android/launcher3/ItemInfo;->rank:I

    :cond_9
    iget v8, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v12, v5, v8

    iget v8, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v13, v5, v8

    const/16 v14, 0xe6

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v2

    move v15, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v5

    if-eqz v5, :cond_a

    int-to-float v5, v9

    add-float/2addr v5, v4

    float-to-int v5, v5

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v4, v8

    move v9, v5

    :cond_a
    move v5, v7

    goto :goto_6

    .line 709
    :cond_b
    iget-object v1, v0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v0, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 710
    return-void
.end method
