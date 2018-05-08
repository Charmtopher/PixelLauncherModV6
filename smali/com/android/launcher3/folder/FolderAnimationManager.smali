.class public Lcom/android/launcher3/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContext:Landroid/content/Context;

.field private final mDelay:I

.field private final mDuration:I

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field private mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mFolderInterpolator:Landroid/animation/TimeInterpolator;

.field final mIsOpening:Z

.field private final mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

.field private final mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 84
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 87
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 90
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 91
    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 93
    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 95
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    const p2, 0x7f0d0009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    .line 97
    const p2, 0x7f0d000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    .line 99
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f070003

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    .line 101
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f070005

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    .line 103
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const p2, 0x7f070004

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 105
    return-void
.end method

.method private addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 237
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v9, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 238
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    const/4 v10, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    move v0, v10

    goto :goto_0

    .line 238
    :cond_0
    nop

    .line 239
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 240
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    .line 242
    :goto_1
    move-object v11, v2

    goto :goto_2

    .line 241
    :cond_1
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 242
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 243
    const/4 v13, 0x4

    if-eqz v0, :cond_2

    .line 244
    nop

    .line 246
    move v14, v12

    goto :goto_3

    .line 244
    :cond_2
    nop

    .line 246
    move v14, v13

    :goto_3
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getItemCount()I

    move-result v0

    if-le v0, v13, :cond_4

    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_4

    :cond_3
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_4

    :cond_4
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    .line 248
    :goto_4
    move-object v15, v0

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 249
    move v4, v1

    :goto_5
    if-ge v4, v12, :cond_9

    .line 250
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 251
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 254
    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 255
    invoke-virtual {v5, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 258
    invoke-virtual {v9, v14}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v1

    .line 259
    iget v3, v9, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v3, v1

    .line 260
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget v1, v1, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 262
    div-float v1, v3, p2

    .line 263
    iget-boolean v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v10, :cond_5

    .line 265
    move v10, v1

    goto :goto_6

    .line 263
    :cond_5
    nop

    .line 265
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v2, v10}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 266
    invoke-virtual {v2, v10}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 269
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v9, v4, v14, v10}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 272
    iget v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    iget v13, v2, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v10, v13

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v3, v10

    div-int/lit8 v3, v3, 0x2

    .line 274
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v10, v10, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    int-to-float v3, v3

    sub-float/2addr v10, v3

    move/from16 v13, p3

    int-to-float v3, v13

    add-float/2addr v10, v3

    div-float v10, v10, p2

    float-to-int v3, v10

    .line 276
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v10, v10, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move/from16 v17, v4

    move-object/from16 v16, v9

    move/from16 v9, p4

    int-to-float v4, v9

    add-float/2addr v10, v4

    div-float v10, v10, p2

    float-to-int v4, v10

    .line 278
    iget v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    .line 279
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 281
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-direct {v6, v2, v0, v3, v10}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    invoke-direct {v6, v7, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 285
    move-object/from16 v18, v5

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v2, v5, v4, v10}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v5

    .line 286
    invoke-virtual {v5, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    invoke-direct {v6, v7, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 289
    sget-object v10, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v10, v1, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v8

    .line 290
    invoke-virtual {v8, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 293
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v10, v10, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderPagedView;->getItemCount()I

    move-result v10

    const/4 v9, 0x4

    if-le v10, v9, :cond_8

    .line 296
    iget-boolean v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v10, :cond_6

    iget v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    goto :goto_7

    :cond_6
    iget v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    mul-int/lit8 v10, v10, 0x2

    .line 297
    :goto_7
    iget-boolean v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v9, :cond_7

    .line 298
    move-object/from16 v19, v11

    move/from16 v20, v12

    int-to-long v11, v10

    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 299
    invoke-virtual {v5, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 300
    invoke-virtual {v8, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_8

    .line 302
    :cond_7
    move-object/from16 v19, v11

    move/from16 v20, v12

    :goto_8
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v11

    int-to-long v9, v10

    sub-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 303
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v5, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 304
    invoke-virtual {v8}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v8, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_9

    .line 307
    :cond_8
    move-object/from16 v19, v11

    move/from16 v20, v12

    :goto_9
    new-instance v8, Lcom/android/launcher3/folder/FolderAnimationManager$3;

    move-object v0, v8

    move v5, v1

    move-object v1, v6

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager$3;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    add-int/lit8 v4, v9, 0x1

    move-object v5, v10

    move-object/from16 v9, v16

    move-object/from16 v11, v19

    move/from16 v12, v20

    const/4 v10, 0x1

    const/4 v13, 0x4

    goto/16 :goto_5

    .line 330
    :cond_9
    return-void
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 4

    .line 355
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 356
    new-array v0, v3, [F

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    new-array v0, v3, [F

    aput p4, v0, v2

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 355
    return-object p1
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 6

    .line 333
    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    iget v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 334
    return-void
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V
    .locals 0

    .line 337
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 338
    int-to-long p3, p5

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 339
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/AnimatorSet;
    .locals 19

    .line 112
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 113
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 114
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    .line 117
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 118
    iget-object v5, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v7, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 119
    invoke-virtual {v5, v7, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v7

    .line 120
    iget-object v5, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v8

    .line 121
    mul-int/lit8 v5, v8, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v7

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v9

    .line 125
    iget v1, v1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v1, v9

    .line 126
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    iget v2, v2, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    int-to-float v2, v2

    div-float v2, v1, v2

    mul-float v9, v2, v7

    .line 128
    iget-boolean v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_0

    .line 130
    move v2, v9

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 130
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget-object v11, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v11, v2}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 131
    iget-object v11, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v11, v2}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 132
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 133
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 138
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 139
    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 140
    iget v12, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    sub-float/2addr v12, v5

    int-to-float v1, v1

    sub-float/2addr v12, v1

    float-to-int v1, v12

    .line 143
    :cond_1
    move v12, v1

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v1

    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v1, v13

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    .line 145
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v13

    iget-object v14, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v13, v13

    .line 148
    iget v14, v4, Landroid/graphics/Rect;->left:I

    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v15}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v15

    add-int/2addr v14, v15

    sub-int/2addr v14, v1

    sub-int/2addr v14, v12

    .line 150
    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v15}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v15

    add-int/2addr v4, v15

    sub-int/2addr v4, v13

    .line 151
    iget v15, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 152
    iget v15, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    .line 155
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const v10, 0x1010433

    invoke-static {v15, v10}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v10

    .line 156
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 157
    const/high16 v11, 0x43610000    # 225.0f

    const/high16 v16, 0x43200000    # 160.0f

    iget v15, v15, Lcom/android/launcher3/folder/PreviewBackground;->mColorMultiplier:F

    mul-float v15, v15, v16

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/b/a;->f(II)I

    move-result v11

    .line 158
    iget-object v15, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-boolean v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    invoke-virtual {v15, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 161
    add-int/2addr v1, v12

    .line 162
    new-instance v15, Landroid/graphics/Rect;

    int-to-float v1, v1

    div-float v2, v1, v9

    .line 163
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v13, v13

    div-float v3, v13, v9

    .line 164
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v1, v5

    div-float/2addr v1, v9

    .line 165
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v13, v5

    div-float/2addr v13, v9

    .line 166
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-direct {v15, v2, v3, v1, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    new-instance v13, Landroid/graphics/Rect;

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    iget v0, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    const/4 v2, 0x0

    invoke-direct {v13, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    div-float/2addr v5, v9

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, v5, v0

    .line 169
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v3, v0

    .line 172
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 175
    new-instance v0, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v1, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    move/from16 v17, v12

    iget-object v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    move/from16 v18, v7

    const v7, 0x1010038

    .line 177
    invoke-static {v12, v7}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    .line 178
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v7, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v7, v7, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    .line 179
    iget-boolean v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v12, :cond_3

    .line 180
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 182
    :cond_3
    iget-boolean v12, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    invoke-virtual {v7, v12}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 183
    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-direct {v6, v5, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 185
    goto :goto_2

    .line 187
    :cond_4
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v14, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 188
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v0, v1, v4, v7}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 189
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1, v9, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 190
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "color"

    iget-boolean v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v7, 0x1

    const/4 v12, 0x2

    if-eqz v4, :cond_5

    new-array v4, v12, [I

    const/4 v14, 0x0

    aput v11, v4, v14

    aput v10, v4, v7

    :goto_3
    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    new-array v4, v12, [I

    aput v10, v4, v14

    aput v11, v4, v7

    goto :goto_3

    :goto_4
    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 191
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-boolean v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 192
    new-instance v10, Lcom/android/launcher3/folder/FolderAnimationManager$1;

    move-object v0, v10

    move-object v1, v6

    move-object v4, v15

    move-object v11, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 199
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/2addr v1, v7

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 202
    iget v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    div-int/lit8 v5, v0, 0x2

    .line 203
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getElevation()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 204
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_6

    int-to-long v0, v5

    :goto_5
    move-wide v3, v0

    goto :goto_6

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_5

    :goto_6
    move-object v0, v6

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 206
    new-instance v0, Lcom/android/launcher3/folder/FolderAnimationManager$2;

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/FolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 221
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    goto :goto_7

    .line 224
    :cond_7
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/2addr v0, v12

    sub-int/2addr v8, v0

    .line 225
    div-float v9, v9, v18

    add-int v12, v17, v8

    invoke-direct {v6, v11, v9, v12, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V

    .line 229
    return-object v11
.end method
