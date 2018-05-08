.class public Lcom/android/launcher3/folder/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/FolderInfo$FolderListener;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;

.field static sStaticValuesDirty:Z


# instance fields
.field mAnimating:Z

.field public mBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private mBackgroundIsVisible:Z

.field public mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field private mCurrentPreviewItems:Ljava/util/List;

.field public mFolder:Lcom/android/launcher3/folder/Folder;

.field public mFolderName:Lcom/android/launcher3/BubbleTextView;

.field mInfo:Lcom/android/launcher3/FolderInfo;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field public mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field public mOpenAlarm:Lcom/android/launcher3/Alarm;

.field public mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

.field mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTempBounds:Landroid/graphics/Rect;

.field private mTempSpaceForBadgeOffset:Landroid/graphics/Point;

.field private mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 116
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 96
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 101
    new-instance p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 104
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 109
    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 111
    new-instance p1, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 114
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 243
    new-instance p1, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 96
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 101
    new-instance p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 104
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 109
    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 111
    new-instance p1, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 114
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 243
    new-instance p1, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/FolderIcon;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/FolderIcon;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-object p0
.end method

.method public static fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 3

    .line 151
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 159
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 163
    const p2, 0x7f0e004c

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 164
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 166
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 169
    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 170
    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 172
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 173
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 174
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, p2, v2

    const v0, 0x7f0c0055

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    .line 176
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 177
    iput-object p0, p2, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 178
    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/FolderInfo;)V

    .line 179
    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    new-instance p2, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p2, v0}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 180
    iget-object p2, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 182
    invoke-virtual {p3, p0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 184
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    return-object p0
.end method

.method private init()V
    .locals 2

    .line 141
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 142
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 143
    new-instance v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    .line 145
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 146
    return-void
.end method

.method private updatePreviewItems(Z)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    .line 560
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 561
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addItem(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 218
    return-void
.end method

.method public final addItem(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 222
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 625
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 626
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 627
    return-void
.end method

.method public final varargs createBadgeScaleAnimator([F)Landroid/animation/Animator;
    .locals 1

    .line 412
    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 455
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 457
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object v1, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParams(II)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_3

    return-void

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    if-nez v0, :cond_4

    return-void

    .line 470
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    goto :goto_0

    .line 473
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 480
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 482
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 484
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 488
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->drawBadge(Landroid/graphics/Canvas;)V

    .line 489
    return-void
.end method

.method public final drawBadge(Landroid/graphics/Canvas;)V
    .locals 8

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    .line 494
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v2

    .line 495
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 496
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    add-int v5, v0, v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const v3, 0x3e4cccd0    # 0.20000005f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 501
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v4, v0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 504
    :cond_2
    return-void
.end method

.method public final getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 6

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    .line 533
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 534
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 535
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    invoke-virtual {v4, p1, v3}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_1
    return-object v0
.end method

.method public final onAdd(Lcom/android/launcher3/ShortcutInfo;I)V
    .locals 2

    .line 570
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result p2

    .line 571
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 572
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result p1

    .line 573
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 576
    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 8

    .line 373
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 382
    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 376
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    goto :goto_0

    .line 382
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v1, v0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 383
    :cond_2
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v1, p0

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FIZ)V

    .line 385
    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FIZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p5

    .line 283
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 284
    iput v4, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 289
    if-eqz v3, :cond_9

    .line 290
    iget-object v4, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 291
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 292
    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 293
    nop

    .line 294
    if-nez p3, :cond_0

    .line 295
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 296
    iget-object v7, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, v7, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 298
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleX()F

    move-result v8

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleY()F

    move-result v9

    .line 301
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 302
    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 303
    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    .line 305
    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 306
    invoke-virtual {v0, v9}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 307
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    goto :goto_0

    .line 310
    :cond_0
    move-object/from16 v6, p3

    move/from16 v10, p4

    :goto_0
    add-int/lit8 v7, v2, 0x1

    const/4 v15, 0x4

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 311
    nop

    .line 312
    const/4 v8, 0x0

    const/4 v14, 0x1

    if-nez p6, :cond_1

    if-lt v2, v15, :cond_5

    .line 313
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 315
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 316
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 319
    move v11, v2

    move v2, v8

    :goto_1
    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 320
    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v12}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 323
    nop

    .line 319
    move v11, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_3
    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v2, v11, v14}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 328
    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v2, v9, v12, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/ShortcutInfo;)V

    .line 329
    nop

    .line 335
    move v13, v11

    move/from16 v17, v14

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/FolderIcon;->removeItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 335
    :cond_5
    move v13, v2

    move/from16 v17, v8

    :goto_2
    if-nez v17, :cond_6

    .line 336
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 339
    :cond_6
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 340
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v15, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v11, v12, v7, v15}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v11, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v12, v12, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v11, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v12, v12, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget v7, v7, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v11, v11, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v12, v12, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v12, v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v12, v15

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v12, v12, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v2, v7

    div-float/2addr v2, v15

    add-float/2addr v12, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v9, v8

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v9, v14

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 341
    aget v7, v9, v8

    int-to-float v7, v7

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v9, v8

    .line 342
    aget v7, v9, v14

    int-to-float v7, v7

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v9, v14

    .line 344
    aget v7, v9, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    const/4 v11, 0x2

    div-int/2addr v8, v11

    sub-int/2addr v7, v8

    aget v8, v9, v14

    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v11

    sub-int/2addr v8, v9

    .line 344
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 347
    const/4 v15, 0x4

    if-ge v13, v15, :cond_7

    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 349
    :goto_3
    mul-float/2addr v10, v2

    .line 350
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v11, 0x190

    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v21, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 355
    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    if-nez v17, :cond_8

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    move/from16 v11, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    goto :goto_4

    .line 358
    :cond_8
    move/from16 v11, v21

    .line 359
    :goto_4
    new-instance v2, Lcom/android/launcher3/folder/FolderIcon$3;

    invoke-direct {v2, v0, v11, v1}, Lcom/android/launcher3/folder/FolderIcon$3;-><init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/ShortcutInfo;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void

    .line 367
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 369
    return-void
.end method

.method public final onItemsChanged(Z)V
    .locals 0

    .line 553
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 556
    return-void
.end method

.method public final onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v2, v1, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    iget-object p1, p1, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v1, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    iget p1, v1, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, v1, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result p1

    .line 583
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 586
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f0c0055

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 592
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 598
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 603
    const/4 p1, 0x1

    return p1

    .line 606
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 615
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    invoke-static {p0, v1, p1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 613
    goto :goto_0

    .line 608
    :pswitch_2
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 609
    nop

    .line 620
    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final prepareAutoUpdate()V
    .locals 0

    .line 566
    return-void
.end method

.method public final prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParams(II)V

    iput-object v1, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public final removeItem(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 226
    return-void
.end method

.method public final removeListeners()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 632
    return-void
.end method

.method public final setBackgroundVisible(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 443
    return-void
.end method

.method public final setTextVisible(Z)V
    .locals 1

    .line 507
    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    return-void

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 512
    return-void
.end method

.method public final updateBadgeScale(ZZ)V
    .locals 1

    .line 401
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->createBadgeScaleAnimator([F)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 406
    :cond_1
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 409
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, p1, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v4
.end method

.method public final willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z
    .locals 3

    .line 205
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 206
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 209
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 206
    return p1
.end method
