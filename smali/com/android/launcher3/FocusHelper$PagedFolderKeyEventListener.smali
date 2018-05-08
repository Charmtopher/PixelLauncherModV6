.class public Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mFolder:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 82
    return-void
.end method


# virtual methods
.method public final handleNoopKey(ILandroid/view/View;)V
    .locals 1

    .line 188
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->requestFocus()Z

    .line 190
    invoke-static {p1, p2}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    .line 86
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v9

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 88
    return v9

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 99
    return v11

    .line 104
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 105
    invoke-virtual {v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/launcher3/CellLayout;

    .line 107
    invoke-virtual {v12, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 108
    invoke-virtual {v13}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/launcher3/folder/FolderPagedView;

    .line 110
    invoke-virtual {v14, v13}, Lcom/android/launcher3/folder/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v15

    .line 111
    invoke-virtual {v14}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v6

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    .line 114
    invoke-static {v13}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v5

    .line 116
    move v2, v8

    move-object v3, v5

    move-object/from16 v16, v5

    move v5, v15

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v2

    .line 118
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 119
    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    .line 120
    return v9

    .line 122
    :cond_2
    nop

    .line 125
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 175
    invoke-virtual {v12, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_5

    .line 139
    :pswitch_0
    sub-int/2addr v15, v10

    invoke-static {v14, v15}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_9

    .line 141
    invoke-virtual {v14, v15}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 142
    invoke-virtual {v2, v11, v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_5

    .line 146
    :pswitch_1
    sub-int/2addr v15, v10

    invoke-static {v14, v15}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    invoke-virtual {v14, v15}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 149
    move-object/from16 v4, v16

    array-length v3, v4

    sub-int/2addr v3, v10

    aget-object v4, v4, v11

    array-length v4, v4

    sub-int/2addr v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_5

    .line 128
    :pswitch_2
    move-object/from16 v4, v16

    sub-int/2addr v15, v10

    invoke-static {v14, v15}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 129
    if-eqz v5, :cond_9

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 131
    invoke-virtual {v14, v15}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 132
    nop

    .line 133
    const/4 v6, -0x5

    if-ne v2, v6, :cond_3

    .line 134
    move v2, v10

    goto :goto_0

    .line 133
    :cond_3
    nop

    .line 134
    move v2, v11

    :goto_0
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v6

    xor-int/2addr v2, v6

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    array-length v2, v4

    add-int/lit8 v11, v2, -0x1

    .line 132
    :goto_1
    invoke-virtual {v5, v11, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 136
    goto :goto_5

    .line 169
    :pswitch_3
    invoke-virtual {v13, v11, v11}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 170
    goto :goto_5

    .line 172
    :pswitch_4
    invoke-virtual {v14}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v3

    .line 173
    goto :goto_5

    .line 153
    :pswitch_5
    add-int/2addr v15, v10

    invoke-static {v14, v15}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_9

    .line 155
    invoke-virtual {v14, v15}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 156
    invoke-virtual {v2, v11, v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_5

    .line 161
    :pswitch_6
    add-int/2addr v15, v10

    invoke-static {v14, v15}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_9

    .line 163
    invoke-virtual {v14, v15}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v6, -0x9

    if-ne v2, v6, :cond_5

    move v2, v10

    goto :goto_2

    :cond_5
    move v2, v11

    :goto_2
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v6

    xor-int/2addr v2, v6

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v11, v2, -0x1

    :goto_3
    if-ltz v11, :cond_9

    move v2, v5

    :goto_4
    if-ltz v2, :cond_8

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 178
    move-object v3, v6

    goto :goto_5

    .line 164
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 178
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 180
    invoke-static {v8, v1}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_6

    .line 182
    :cond_a
    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    .line 184
    :goto_6
    return v9

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
