.class public Lcom/android/launcher3/views/OptionsPopupView;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mItemMap:Landroid/util/ArrayMap;

.field private mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/OptionsPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    .line 61
    return-void
.end method

.method private handleViewClick(Landroid/view/View;I)Z
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 75
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    iget v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mControlTypeForLog:I

    if-lez v2, :cond_1

    .line 79
    iget v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mControlTypeForLog:I

    iget-object v3, p0, Lcom/android/launcher3/views/OptionsPopupView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 81
    :cond_1
    iget-object p2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 83
    return p1

    .line 85
    :cond_2
    return v1
.end method

.method public static onWidgetsClicked(Landroid/view/View;)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const v0, 0x7f0c0026

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 159
    return v1

    .line 161
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/WidgetsFullSheet;

    .line 162
    return v0
.end method

.method public static show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f040022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/OptionsPopupView;

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 125
    const v0, 0x7f040035

    invoke-virtual {p0, v0, p0}, Lcom/android/launcher3/views/OptionsPopupView;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 126
    iget-object v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget v2, p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mIconRes:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    iget v2, p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mLabelRes:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setText(I)V

    .line 128
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setDividerVisibility(I)V

    .line 129
    invoke-virtual {v0, p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getChildCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->reorderAndShow(I)V

    .line 134
    return-void
.end method

.method public static showDefaultOptions(Lcom/android/launcher3/Launcher;FF)V
    .locals 6

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 138
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x2

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    int-to-float p1, p1

    .line 140
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    .line 142
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, p1, v0

    sub-float v4, p2, v0

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    invoke-direct {v1, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    const v0, 0x7f0c0057

    const v2, 0x7f020044

    const/4 v4, 0x3

    sget-object v5, Lcom/android/launcher3/views/-$$Lambda$Xmxd6hZohvH9mIvfgwHI39dIzk0;->INSTANCE:Lcom/android/launcher3/views/-$$Lambda$Xmxd6hZohvH9mIvfgwHI39dIzk0;

    invoke-direct {p2, v0, v2, v4, v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    const v0, 0x7f0c0056

    const v2, 0x7f020046

    sget-object v4, Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;->INSTANCE:Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    const v0, 0x7f0c0058

    const v2, 0x7f02003b

    const/4 v3, 0x4

    sget-object v4, Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;->INSTANCE:Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {p0, v1, p1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;)V

    .line 153
    return-void
.end method

.method public static startSettings(Landroid/view/View;)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 171
    const/4 p0, 0x1

    return p0
.end method

.method public static startWallpaperPicker(Landroid/view/View;)Z
    .locals 8

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 181
    const p0, 0x7f0c0059

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 182
    return v2

    .line 184
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.launcher3.WALLPAPER_OFFSET"

    .line 186
    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmpty()I

    move-result v6

    sget-object v7, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    sget-object v4, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    aget v2, v4, v2

    int-to-float v2, v2

    sget-object v4, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 185
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    .line 188
    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 193
    :cond_1
    const-string v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 117
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 111
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;I)Z

    .line 66
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    return v1

    .line 100
    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 101
    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
