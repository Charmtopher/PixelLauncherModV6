.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_STATE_ACTIVE:[I

.field private static final BACKGROUND_STATE_DEFAULT:[I

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field final mBackground:Landroid/graphics/drawable/Drawable;

.field public mCellHeight:I

.field public mCellWidth:I

.field private final mChildScale:F

.field public final mContainerType:I

.field public mCountX:I

.field public mCountY:I

.field private final mDirectionVector:[I

.field final mDragCell:[I

.field final mDragOutlineAlphas:[F

.field final mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field final mDragOutlines:[Landroid/graphics/Rect;

.field mDragging:Z

.field mDropPending:Z

.field private final mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field public mFixedCellHeight:I

.field public mFixedCellWidth:I

.field public mFixedHeight:I

.field public mFixedWidth:I

.field public final mFolderBackgrounds:Ljava/util/ArrayList;

.field public final mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

.field mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private final mIntersectingViews:Ljava/util/ArrayList;

.field private mIsDragOverlapping:Z

.field mItemPlacementDirty:Z

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOccupiedRect:Landroid/graphics/Rect;

.field final mPreviousReorderDirection:[I

.field final mReorderAnimators:Landroid/util/ArrayMap;

.field final mReorderPreviewAnimationMagnitude:F

.field final mShakeAnimators:Landroid/util/ArrayMap;

.field public final mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;

.field private mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field private mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mUseTouchHelper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a2

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 110
    sget-object v0, Lcom/android/launcher3/CellLayout;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 97
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 98
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    .line 107
    new-instance v2, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v2}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 115
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 118
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 122
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 123
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 124
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 128
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 129
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 131
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 132
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    .line 134
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 137
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 139
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 153
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 168
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 169
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 170
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 179
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 1032
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 191
    sget-object v1, Lcom/android/launcher3/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 192
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 193
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 199
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 201
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    .line 203
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 204
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 206
    iget-object p3, p2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p3, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 207
    iget-object p3, p2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p3, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 208
    new-instance p3, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p3, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 209
    new-instance p3, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p3, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 211
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v1, -0x64

    aput v1, p3, v0

    .line 212
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    aput v1, p3, v3

    .line 214
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v2, p3, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 215
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v2, p3, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 220
    const v1, 0x7f020007

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 224
    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p2, p2

    const v1, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 227
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 228
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v2, v1, v3

    aput v2, p2, v0

    .line 229
    move p2, v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, p2

    .line 229
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x7f01002d

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const p2, 0x7f0d0005

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 239
    const v1, 0x7f0d0006

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 245
    new-instance v1, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v3, p2

    invoke-direct {v1, v3, v4, v2, p3}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 247
    iget-object v3, v1, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    nop

    .line 249
    iget-object v3, v1, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    iget-object v3, v1, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v1, v3, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_1
    new-instance p2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget p3, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {p2, p1, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 283
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget p3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions$3b4dfe4b(III)V

    .line 285
    new-instance p1, Lcom/android/launcher3/StylusEventHelper;

    new-instance p2, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {p2, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 286
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/CellLayout;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/CellLayout;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return p0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 11

    .line 1250
    iget-object p4, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1251
    nop

    .line 1252
    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1253
    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x1

    invoke-virtual {p4, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1255
    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v5, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v6, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, p2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v9, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1258
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget p2, p2, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget p2, p2, v1

    if-ltz p2, :cond_0

    .line 1259
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget p2, p2, v0

    iput p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1260
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget p2, p2, v1

    iput p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1261
    nop

    .line 1263
    move v0, v1

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1264
    return v0
.end method

.method private addViewsToTempLocation$42c365de(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 16

    move-object/from16 v9, p0

    .line 1549
    move-object/from16 v10, p4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    .line 1551
    :cond_0
    nop

    .line 1552
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1554
    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v12}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1558
    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1559
    iget-object v2, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v1, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1560
    goto :goto_0

    .line 1562
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 1563
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 1564
    iget v2, v12, Landroid/graphics/Rect;->left:I

    .line 1567
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1568
    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 1569
    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v4, v2

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v5, v1

    iget v6, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1570
    goto :goto_1

    .line 1572
    :cond_2
    iget-object v1, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1574
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1575
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v7, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 1574
    move-object v0, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1579
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v14

    if-ltz v0, :cond_4

    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v11

    if-ltz v0, :cond_4

    .line 1580
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v14

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 1581
    iget-object v1, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v1, v11

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1582
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1583
    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 1584
    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1585
    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1586
    goto :goto_2

    .line 1587
    :cond_3
    nop

    .line 1591
    move v14, v11

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1592
    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1593
    iget-object v2, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v1, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1594
    goto :goto_3

    .line 1595
    :cond_5
    return v14
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4

    .line 1603
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    .line 1606
    aget v1, p3, v2

    .line 1607
    aput v0, p3, v2

    .line 1609
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1611
    return v2

    .line 1613
    :cond_0
    aput v1, p3, v2

    .line 1614
    aget v1, p3, v0

    .line 1615
    aput v0, p3, v0

    .line 1617
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1619
    return v2

    .line 1622
    :cond_1
    aput v1, p3, v0

    .line 1625
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1626
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1627
    aget v1, p3, v2

    .line 1628
    aput v0, p3, v2

    .line 1629
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1631
    return v2

    .line 1634
    :cond_2
    aput v1, p3, v2

    .line 1635
    aget v1, p3, v0

    .line 1636
    aput v0, p3, v0

    .line 1637
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1639
    return v2

    .line 1642
    :cond_3
    aput v1, p3, v0

    .line 1643
    aget p1, p3, v0

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v0

    .line 1644
    aget p1, p3, v2

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v2

    .line 1646
    goto :goto_0

    .line 1649
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1651
    return v2

    .line 1654
    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1655
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1656
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1658
    return v2

    .line 1661
    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1662
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1668
    aget v1, p3, v2

    .line 1669
    aget v3, p3, v0

    aput v3, p3, v2

    .line 1670
    aput v1, p3, v0

    .line 1671
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1673
    return v2

    .line 1677
    :cond_7
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1678
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1679
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1681
    return v2

    .line 1684
    :cond_8
    aget p1, p3, v0

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v0

    .line 1685
    aget p1, p3, v2

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v2

    .line 1688
    aget p1, p3, v2

    .line 1689
    aget p2, p3, v0

    aput p2, p3, v2

    .line 1690
    aput p1, p3, v0

    .line 1692
    :goto_0
    return v0
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    .line 1756
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1758
    const/4 v2, 0x0

    aput v2, p3, v2

    .line 1759
    const/4 v3, 0x1

    aput v2, p3, v3

    .line 1760
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 1761
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v2

    .line 1763
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, v6

    if-lez p1, :cond_1

    .line 1764
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v3

    .line 1766
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 8

    .line 1810
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1811
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1812
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1813
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1815
    if-eqz p2, :cond_0

    .line 1816
    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    goto :goto_1

    .line 1818
    :cond_0
    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .line 1820
    :goto_1
    iget-object v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    invoke-direct {v4}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1822
    :cond_1
    return-void
.end method

.method private findConfigurationNoShuffle$2d72d4a7(IIIIIILcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 13

    .line 2092
    move-object/from16 v0, p7

    const/4 v1, 0x2

    new-array v12, v1, [I

    .line 2093
    new-array v1, v1, [I

    .line 2094
    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v10, v12

    move-object v11, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    .line 2096
    const/4 v2, 0x0

    aget v3, v12, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v12, v3

    if-ltz v4, :cond_0

    .line 2097
    move-object v4, p0

    invoke-direct {v4, v0, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2098
    aget v4, v12, v2

    iput v4, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 2099
    aget v4, v12, v3

    iput v4, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 2100
    aget v2, v1, v2

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 2101
    aget v1, v1, v3

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 2102
    iput-boolean v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2104
    :cond_0
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2106
    :goto_0
    return-object v0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 1065
    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v8, v9

    if-ge v6, v8, :cond_0

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1070
    :cond_0
    move/from16 v6, p1

    int-to-float v6, v6

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 1071
    move/from16 v8, p2

    int-to-float v8, v8

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 1074
    if-eqz p8, :cond_1

    .line 1075
    move-object/from16 v9, p8

    goto :goto_1

    .line 1074
    :cond_1
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1075
    :goto_1
    nop

    .line 1076
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1077
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 1079
    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1080
    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1082
    if-lez v1, :cond_20

    if-lez v2, :cond_20

    if-lez v3, :cond_20

    if-lez v4, :cond_20

    if-lt v3, v1, :cond_20

    if-ge v4, v2, :cond_2

    goto/16 :goto_15

    .line 1087
    :cond_2
    const/4 v11, 0x0

    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_2
    add-int/lit8 v19, v2, -0x1

    sub-int v15, v14, v19

    const/16 v16, 0x1

    if-ge v11, v15, :cond_1e

    .line 1089
    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v19, v1, -0x1

    sub-int v7, v13, v19

    if-ge v15, v7, :cond_1d

    .line 1090
    nop

    .line 1091
    nop

    .line 1092
    if-eqz p7, :cond_16

    .line 1094
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_5

    .line 1095
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_4

    .line 1096
    move-object/from16 v20, v9

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v9, v9, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v19, v15, v7

    aget-object v9, v9, v19

    add-int v19, v11, v5

    aget-boolean v9, v9, v19

    if-nez v9, :cond_3

    .line 1097
    add-int/lit8 v5, v5, 0x1

    .line 1095
    move-object/from16 v9, v20

    goto :goto_5

    .line 1089
    :cond_3
    move-object v4, v10

    move/from16 v24, v13

    move/from16 v25, v14

    goto/16 :goto_14

    .line 1094
    :cond_4
    move-object/from16 v20, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1101
    :cond_5
    move-object/from16 v20, v9

    .line 1102
    nop

    .line 1107
    nop

    .line 1108
    if-lt v1, v3, :cond_6

    .line 1109
    move/from16 v5, v16

    goto :goto_6

    .line 1108
    :cond_6
    nop

    .line 1109
    const/4 v5, 0x0

    :goto_6
    if-lt v2, v4, :cond_7

    .line 1110
    move/from16 v7, v16

    goto :goto_7

    .line 1109
    :cond_7
    nop

    .line 1110
    const/4 v7, 0x0

    :goto_7
    move v9, v2

    move/from16 v19, v16

    :goto_8
    if-eqz v5, :cond_9

    if-nez v7, :cond_8

    goto :goto_9

    .line 1136
    :cond_8
    move-object/from16 v22, v10

    goto/16 :goto_f

    .line 1111
    :cond_9
    :goto_9
    if-eqz v19, :cond_e

    if-nez v5, :cond_e

    .line 1112
    move/from16 v21, v5

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v9, :cond_c

    .line 1113
    add-int v2, v15, v1

    move-object/from16 v22, v10

    add-int/lit8 v10, v13, -0x1

    if-gt v2, v10, :cond_a

    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v10, v10, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v10, v2

    add-int v10, v11, v5

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_b

    .line 1115
    :cond_a
    nop

    .line 1112
    move/from16 v21, v16

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v22

    move/from16 v2, p4

    goto :goto_a

    .line 1118
    :cond_c
    move-object/from16 v22, v10

    if-nez v21, :cond_d

    .line 1119
    add-int/lit8 v1, v1, 0x1

    .line 1132
    :cond_d
    move/from16 v5, v21

    goto :goto_c

    .line 1121
    :cond_e
    move-object/from16 v22, v10

    if-nez v7, :cond_13

    .line 1122
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_11

    .line 1123
    add-int v10, v11, v9

    move/from16 v23, v1

    add-int/lit8 v1, v14, -0x1

    if-gt v10, v1, :cond_f

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v21, v15, v2

    aget-object v1, v1, v21

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_10

    .line 1125
    :cond_f
    nop

    .line 1122
    move/from16 v7, v16

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v23

    goto :goto_b

    .line 1128
    :cond_11
    move/from16 v23, v1

    if-nez v7, :cond_12

    .line 1129
    add-int/lit8 v9, v9, 0x1

    .line 1132
    :cond_12
    move/from16 v1, v23

    goto :goto_c

    :cond_13
    move/from16 v23, v1

    :goto_c
    if-lt v1, v3, :cond_14

    move/from16 v2, v16

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    or-int/2addr v5, v2

    .line 1133
    if-lt v9, v4, :cond_15

    move/from16 v2, v16

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v7, v2

    .line 1134
    nop

    .line 1110
    xor-int/lit8 v19, v19, 0x1

    move-object/from16 v10, v22

    move/from16 v2, p4

    goto :goto_8

    .line 1136
    :cond_16
    move-object/from16 v20, v9

    move-object/from16 v22, v10

    const/4 v1, -0x1

    const/4 v9, -0x1

    :goto_f
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1141
    invoke-virtual {v0, v15, v11, v2}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1146
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 1147
    add-int v7, v15, v1

    add-int v10, v11, v9

    invoke-virtual {v5, v15, v11, v7, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1148
    nop

    .line 1149
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 1150
    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1151
    nop

    .line 1152
    nop

    .line 1155
    move/from16 v7, v16

    goto :goto_11

    .line 1154
    :cond_17
    goto :goto_10

    .line 1155
    :cond_18
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v12, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const/4 v10, 0x0

    aget v19, v2, v10

    sub-int v10, v19, v6

    int-to-double v3, v10

    aget v2, v2, v16

    sub-int/2addr v2, v8

    move/from16 v24, v13

    move/from16 v25, v14

    int-to-double v13, v2

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 1158
    cmpg-double v4, v2, v17

    if-gtz v4, :cond_1a

    if-eqz v7, :cond_19

    goto :goto_12

    .line 1160
    :cond_19
    move-object/from16 v4, v22

    goto :goto_13

    .line 1159
    :cond_1a
    :goto_12
    move-object/from16 v4, v22

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1160
    :goto_13
    nop

    .line 1161
    const/4 v7, 0x0

    aput v15, v20, v7

    .line 1162
    aput v11, v20, v16

    .line 1163
    if-eqz p9, :cond_1b

    .line 1164
    aput v1, p9, v7

    .line 1165
    aput v9, p9, v16

    .line 1167
    :cond_1b
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1089
    move-wide/from16 v17, v2

    :cond_1c
    :goto_14
    add-int/lit8 v15, v15, 0x1

    move-object v10, v4

    move-object/from16 v9, v20

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    goto/16 :goto_3

    .line 1087
    :cond_1d
    move-object/from16 v20, v9

    move-object v4, v10

    move/from16 v24, v13

    move/from16 v25, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    goto/16 :goto_2

    .line 1173
    :cond_1e
    move-object/from16 v20, v9

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v17, v1

    if-nez v1, :cond_1f

    .line 1174
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v20, v1

    .line 1175
    aput v2, v20, v16

    .line 1177
    :cond_1f
    invoke-direct {v0, v12}, Lcom/android/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    .line 1178
    return-object v20

    .line 1084
    :cond_20
    :goto_15
    move-object/from16 v20, v9

    return-object v20
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1203
    if-eqz p8, :cond_0

    .line 1204
    move-object/from16 v3, p8

    goto :goto_0

    .line 1203
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1204
    :goto_0
    nop

    .line 1205
    const/high16 v4, -0x80000000

    .line 1207
    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1208
    iget v6, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1210
    move v10, v4

    const/4 v4, 0x0

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v6, v11

    if-ge v4, v11, :cond_8

    .line 1212
    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v5, v13

    if-ge v9, v13, :cond_7

    .line 1214
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_4

    .line 1215
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_3

    .line 1216
    add-int v14, v9, v13

    aget-object v14, p6, v14

    add-int v15, v4, v7

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_2

    if-eqz p7, :cond_1

    aget-object v14, p7, v13

    aget-boolean v14, v14, v7

    if-nez v14, :cond_1

    goto :goto_5

    .line 1212
    :cond_1
    move/from16 v16, v9

    goto :goto_6

    .line 1217
    :cond_2
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1214
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1222
    :cond_4
    sub-int v13, v9, p1

    move/from16 v16, v9

    int-to-double v8, v13

    sub-int v12, v4, p2

    int-to-double v1, v12

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1223
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1224
    int-to-float v8, v13

    int-to-float v9, v12

    invoke-direct {v0, v8, v9, v2}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 1227
    const/4 v8, 0x0

    aget v9, p5, v8

    aget v12, v2, v8

    mul-int/2addr v9, v12

    const/4 v8, 0x1

    aget v12, p5, v8

    aget v2, v2, v8

    mul-int/2addr v12, v2

    add-int v2, v9, v12

    .line 1229
    invoke-static {v1, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_5

    .line 1230
    invoke-static {v1, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_6

    if-le v2, v11, :cond_6

    .line 1232
    :cond_5
    nop

    .line 1233
    nop

    .line 1234
    const/4 v8, 0x0

    aput v16, v3, v8

    .line 1235
    const/4 v8, 0x1

    aput v4, v3, v8

    .line 1212
    move v10, v1

    move v11, v2

    :cond_6
    :goto_6
    add-int/lit8 v9, v16, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_2

    .line 1210
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    move v10, v11

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_1

    .line 1241
    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v9, v0

    if-nez v0, :cond_9

    .line 1242
    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 1243
    const/4 v1, 0x1

    aput v0, v3, v1

    .line 1245
    :cond_9
    return-object v3
.end method

.method private getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 1

    .line 408
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 409
    instance-of v0, p1, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz v0, :cond_0

    .line 410
    check-cast p1, Lcom/android/launcher3/util/ParcelableSparseArray;

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {p1}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    .line 409
    return-object p1
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 5

    .line 2158
    if-eqz p6, :cond_0

    .line 2159
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2161
    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    .line 2162
    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2163
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2164
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p2

    .line 2165
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 2166
    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p4, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 2167
    if-eq p4, p5, :cond_1

    .line 2168
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2169
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2170
    invoke-static {p7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    if-eqz p6, :cond_1

    .line 2173
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2165
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2177
    :cond_2
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1455
    move-object/from16 v3, p5

    new-instance v4, Lcom/android/launcher3/CellLayout$ViewCluster;

    move-object/from16 v5, p1

    invoke-direct {v4, v0, v5, v3}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 1456
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1459
    nop

    .line 1463
    const/4 v7, 0x0

    aget v8, p3, v7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-gez v8, :cond_0

    .line 1464
    nop

    .line 1465
    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    .line 1478
    move v1, v11

    goto :goto_0

    .line 1466
    :cond_0
    aget v8, p3, v7

    if-lez v8, :cond_1

    .line 1467
    nop

    .line 1468
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    .line 1478
    move v1, v10

    goto :goto_0

    .line 1469
    :cond_1
    aget v2, p3, v11

    if-gez v2, :cond_2

    .line 1470
    const/4 v2, 0x2

    .line 1471
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, v1

    .line 1478
    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_0

    .line 1473
    :cond_2
    nop

    .line 1474
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    .line 1478
    move v1, v9

    :goto_0
    if-gtz v2, :cond_3

    .line 1479
    return v7

    .line 1483
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1484
    iget-object v8, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    .line 1485
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v8, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1486
    goto :goto_1

    .line 1491
    :cond_4
    iget-object v5, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v8, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v12, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_2

    .line 1496
    :cond_5
    iget-object v5, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput v1, v5, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    iget-object v5, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v5, v5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1498
    move v5, v7

    :goto_3
    if-lez v2, :cond_1f

    if-nez v5, :cond_1f

    .line 1499
    iget-object v6, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1503
    iget-object v12, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    move-object/from16 v12, p4

    if-eq v8, v12, :cond_1b

    .line 1504
    iget-object v13, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v13, v13, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/CellAndSpan;

    iget v14, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    and-int/2addr v14, v1

    if-ne v14, v1, :cond_10

    iget-object v14, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v7

    :goto_5
    if-ge v15, v14, :cond_f

    iget-object v11, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v11, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    if-eq v1, v10, :cond_c

    if-eq v1, v9, :cond_a

    packed-switch v1, :pswitch_data_0

    move-object/from16 v16, v6

    goto/16 :goto_a

    :pswitch_0
    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_6
    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    move-object/from16 v16, v6

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v6

    if-ge v9, v10, :cond_e

    iget-object v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v6, v6, v9

    if-lt v11, v6, :cond_6

    iget-object v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v6, v6, v9

    if-gez v6, :cond_7

    :cond_6
    iget-object v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v11, v6, v9

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    const/4 v10, 0x4

    goto :goto_6

    :pswitch_1
    move-object/from16 v16, v6

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_7
    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_e

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v10, v10, v9

    if-lt v6, v10, :cond_8

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v10, v10, v9

    if-gez v10, :cond_9

    :cond_8
    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v6, v10, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v16, v6

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v6, v9

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_8
    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_e

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v10, v10, v9

    if-le v6, v10, :cond_b

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v6, v10, v9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v16, v6

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v6, v9

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_9
    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_e

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v10, v10, v9

    if-le v6, v10, :cond_d

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v6, v10, v9

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v16, v6

    iget v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    not-int v7, v1

    and-int/2addr v6, v7

    iput v6, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    goto :goto_b

    :cond_10
    move-object/from16 v16, v6

    :goto_b
    const/4 v6, 0x4

    if-eq v1, v6, :cond_15

    const/16 v6, 0x8

    if-eq v1, v6, :cond_13

    packed-switch v1, :pswitch_data_1

    goto :goto_11

    :pswitch_2
    iget v7, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_c
    iget v9, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_17

    iget-object v9, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v9, v9, v7

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v13, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_11

    goto :goto_e

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :pswitch_3
    iget v7, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_d
    iget v9, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_17

    iget-object v9, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v9, v9, v7

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v11, v13, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_12

    :goto_e
    const/4 v7, 0x1

    goto :goto_12

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    iget v7, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_f
    iget v9, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_17

    iget-object v9, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v9, v9, v7

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v9, v10, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_15
    const/16 v6, 0x8

    iget v7, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_10
    iget v9, v13, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_17

    iget-object v9, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v9, v9, v7

    iget v10, v13, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v9, v10, :cond_16

    goto :goto_e

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_17
    :goto_11
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_19

    .line 1505
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1506
    iget-boolean v7, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v7, :cond_18

    .line 1508
    nop

    .line 1509
    nop

    .line 1519
    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_14

    .line 1511
    :cond_18
    iget-object v7, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1512
    iget-object v7, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .line 1515
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_13

    .line 1518
    :cond_19
    const/4 v9, 0x0

    goto :goto_13

    :cond_1a
    move-object/from16 v12, p4

    :cond_1b
    move-object/from16 v16, v6

    move v6, v9

    move v9, v7

    .line 1499
    :goto_13
    move v7, v9

    const/4 v10, 0x4

    const/4 v11, 0x1

    move v9, v6

    move-object/from16 v6, v16

    goto/16 :goto_4

    .line 1519
    :cond_1c
    move-object/from16 v12, p4

    move v6, v9

    move v9, v7

    :goto_14
    add-int/lit8 v2, v2, -0x1

    .line 1523
    iget-object v7, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v10, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v10, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v10, 0x4

    if-eq v1, v10, :cond_1d

    packed-switch v1, :pswitch_data_2

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    :goto_16
    iput v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_15

    :pswitch_4
    const/4 v13, 0x1

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v11, v13

    goto :goto_16

    :pswitch_5
    const/4 v13, 0x1

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v11, v13

    :goto_17
    iput v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_15

    :cond_1d
    const/4 v13, 0x1

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v11, v13

    goto :goto_17

    :cond_1e
    const/4 v10, 0x4

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1498
    move v7, v9

    const/4 v11, 0x1

    move v9, v6

    goto/16 :goto_3

    .line 1526
    :cond_1f
    move v9, v7

    .line 1527
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1531
    if-nez v5, :cond_20

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_20

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt v2, v5, :cond_20

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_20

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt v1, v2, :cond_20

    .line 1533
    nop

    .line 1539
    const/4 v9, 0x1

    goto :goto_19

    .line 1535
    :cond_20
    iget-object v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v5, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v6, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_18

    .line 1539
    :cond_21
    :goto_19
    iget-object v1, v4, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1540
    iget-object v4, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1541
    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1542
    goto :goto_1a

    .line 1544
    :cond_22
    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2

    .line 1042
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1045
    :cond_0
    return-void
.end method


# virtual methods
.method public final addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 4

    .line 563
    nop

    .line 566
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 567
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 568
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-eq v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 571
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 572
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 576
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_5

    .line 579
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 580
    :cond_2
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 582
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 586
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 588
    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 590
    :cond_4
    return v2

    .line 592
    :cond_5
    return v1
.end method

.method public final animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 839
    iget-object v11, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 841
    invoke-virtual {v11, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v12, 0x0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/ItemInfo;

    .line 846
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 848
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_0
    iget v15, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 852
    iget v5, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 853
    if-eqz p7, :cond_2

    .line 854
    if-eqz p6, :cond_1

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 855
    :goto_0
    iget v1, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 856
    iget v3, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v16, 0x1

    move v1, v6

    move v2, v7

    move/from16 v22, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_1

    .line 858
    :cond_2
    move/from16 v22, v5

    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 859
    if-eqz p6, :cond_3

    .line 860
    iput v6, v14, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v6, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 861
    iput v7, v14, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v7, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_2

    .line 863
    :cond_3
    iput v6, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 864
    iput v7, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 866
    :goto_2
    invoke-virtual {v11, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 867
    iput-boolean v12, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 868
    iget v4, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 869
    iget v6, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 871
    iput v15, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 872
    move/from16 v7, v22

    iput v7, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 875
    if-ne v15, v4, :cond_4

    if-ne v7, v6, :cond_4

    .line 876
    iput-boolean v5, v13, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 877
    return v5

    .line 880
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 881
    move/from16 v0, p4

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 882
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    new-instance v11, Lcom/android/launcher3/CellLayout$3;

    move-object v0, v11

    move-object v1, v8

    move-object v2, v13

    move v3, v15

    move v12, v5

    move v5, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 893
    new-instance v0, Lcom/android/launcher3/CellLayout$4;

    invoke-direct {v0, v8, v13, v9}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 911
    move/from16 v0, p5

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 912
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 913
    return v12

    .line 915
    :cond_5
    return v12

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method final animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1847
    iget-object v10, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 1848
    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1850
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1851
    const/4 v0, 0x0

    move v12, v0

    :goto_0
    const/4 v13, 0x1

    if-ge v12, v11, :cond_1

    .line 1852
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1853
    move-object/from16 v14, p2

    if-eq v1, v14, :cond_0

    .line 1854
    iget-object v0, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/launcher3/util/CellAndSpan;

    .line 1855
    if-eqz v15, :cond_0

    .line 1856
    iget v2, v15, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v15, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1858
    invoke-virtual {v10, v15, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1851
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1861
    :cond_1
    if-eqz p3, :cond_2

    .line 1862
    invoke-virtual {v10, v9, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1864
    :cond_2
    return-void
.end method

.method final beginOrAdjustReorderPreviewAnimations$75beef23(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1870
    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 1871
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_7

    .line 1872
    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1873
    move-object/from16 v15, p2

    if-eq v2, v15, :cond_6

    .line 1874
    iget-object v0, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1875
    const/16 v16, 0x1

    if-nez p3, :cond_0

    iget-object v1, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1876
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1878
    move/from16 v1, v16

    goto :goto_1

    .line 1876
    :cond_0
    nop

    .line 1878
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1879
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 1880
    new-instance v9, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, v9

    move-object v1, v10

    move/from16 v17, v3

    move/from16 v3, p3

    move-object v13, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    .line 1882
    iget v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    iget v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    iget v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    iget-object v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_3

    invoke-virtual {v13}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_4

    :cond_3
    if-nez v16, :cond_6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    iget-object v2, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isPowerSaverOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_4
    iget v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v0, :cond_5

    const-wide/16 v2, 0x15e

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0x12c

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v0, v13}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;

    invoke-direct {v0, v13}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v2, v13, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1871
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1885
    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelLongPress()V
    .locals 3

    .line 535
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    .line 539
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 540
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 541
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method final cellToCenterPoint(II[I)V
    .locals 6

    .line 700
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 701
    return-void
.end method

.method final cellToPoint(II[I)V
    .locals 3

    .line 684
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 687
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 688
    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    const/4 p1, 0x1

    aput v1, p3, p1

    .line 689
    return-void
.end method

.method public final cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 4

    .line 2485
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2486
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 2488
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    .line 2489
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    .line 2491
    mul-int/2addr p3, v0

    .line 2492
    mul-int/2addr p4, v1

    .line 2493
    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    .line 2494
    mul-int/2addr p2, v1

    add-int/2addr v3, p2

    .line 2496
    add-int/2addr p3, v2

    add-int/2addr p4, v3

    invoke-virtual {p5, v2, v3, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2497
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 2534
    instance-of p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return p1
.end method

.method public final clearDragOutlines()V
    .locals 4

    .line 1006
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1007
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1009
    return-void
.end method

.method final commitTempPlacement()V
    .locals 19

    .line 2047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 2049
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v1

    .line 2050
    nop

    .line 2052
    iget v3, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2053
    const-wide/16 v1, -0x1

    .line 2054
    const/16 v3, -0x65

    goto :goto_0

    .line 2057
    :cond_0
    const/16 v3, -0x64

    :goto_0
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v15

    .line 2058
    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_1
    if-ge v14, v15, :cond_4

    .line 2059
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2060
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2061
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/ItemInfo;

    .line 2064
    if-eqz v7, :cond_3

    .line 2065
    iget v5, v7, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v5, v8, :cond_2

    iget v5, v7, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v8, :cond_2

    iget v5, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v8, :cond_2

    iget v5, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v5, v8, :cond_1

    goto :goto_2

    .line 2069
    :cond_1
    move/from16 v5, v16

    goto :goto_3

    .line 2065
    :cond_2
    :goto_2
    nop

    .line 2069
    move v5, v4

    :goto_3
    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v8, v7, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2070
    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v8, v7, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2071
    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v8, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2072
    iget v6, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2074
    if-eqz v5, :cond_3

    .line 2075
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    int-to-long v8, v3

    iget v11, v7, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v12, v7, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v13, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v10, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v6, v7

    move-wide v7, v8

    move/from16 v17, v10

    move-wide v9, v1

    move/from16 v18, v14

    move/from16 v14, v17

    invoke-virtual/range {v5 .. v14}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    goto :goto_4

    .line 2058
    :cond_3
    move/from16 v18, v14

    :goto_4
    add-int/lit8 v14, v18, 0x1

    goto :goto_1

    .line 2080
    :cond_4
    return-void
.end method

.method final completeAndClearReorderPreviewAnimations()V
    .locals 2

    .line 2040
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2041
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    .line 2042
    goto :goto_0

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2044
    return-void
.end method

.method final copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 6

    .line 1825
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1827
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1828
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 1829
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1830
    if-eq v3, p2, :cond_0

    .line 1831
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1832
    iget-object v5, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 1833
    if-eqz v3, :cond_0

    .line 1834
    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 1835
    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 1836
    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1837
    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1838
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1842
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 479
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 481
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewBackground;

    .line 483
    iget-boolean v3, v2, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-eqz v3, :cond_0

    .line 484
    iget v3, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget v4, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 486
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 320
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget-object v1, v0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x7

    const/high16 v5, -0x80000000

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, v0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    if-eq v1, v5, :cond_2

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/g;->updateHoveredVirtualView(I)V

    goto :goto_0

    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/widget/g;->getVirtualViewAt(FF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/g;->updateHoveredVirtualView(I)V

    if-eq v1, v5, :cond_2

    :goto_0
    move v3, v2

    nop

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 321
    return v2

    .line 323
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 401
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2

    .line 393
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    .line 394
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 395
    const v1, 0x7f0e0004

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    return-void
.end method

.method public final enableAccessibleDrag(ZI)V
    .locals 2

    .line 290
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 291
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 292
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 294
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 297
    :cond_0
    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of p1, p1, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    if-nez p1, :cond_1

    .line 299
    new-instance p1, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_0

    .line 300
    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of p1, p1, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    if-nez p1, :cond_2

    .line 302
    new-instance p1, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 304
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 306
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 307
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 315
    :cond_3
    return-void
.end method

.method public final enableHardwareLayer(Z)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 351
    return-void
.end method

.method public final findCellForSpan([III)Z
    .locals 1

    .line 2425
    if-nez p1, :cond_0

    .line 2426
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p1

    return p1
.end method

.method public final findNearestArea(IIII[I)[I
    .locals 10

    .line 2404
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method final findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1772
    move-object/from16 v10, p10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p9

    :goto_0
    invoke-direct {v6, v10, v12}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 1775
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1779
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 1780
    move-object v0, v6

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v16

    .line 1785
    aget v0, v16, v12

    aget v1, v16, v11

    if-ltz v0, :cond_8

    if-gez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, v0, v13

    add-int v4, v1, v14

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v9, :cond_1

    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v2, :cond_1

    iput v0, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eq v3, v9, :cond_2

    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v11, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move-object/from16 v17, v1

    iget v1, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    move/from16 v18, v15

    iget v15, v4, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v15

    iget v15, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v4, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v15, v4

    invoke-virtual {v0, v11, v12, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v1, v17

    move/from16 v15, v18

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    move/from16 v18, v15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1, v8, v10}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation$42c365de(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-direct {v6, v1, v2, v8, v10}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 1788
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1785
    :cond_8
    :goto_2
    move/from16 v18, v15

    .line 1788
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_c

    .line 1791
    move/from16 v0, p3

    if-le v13, v0, :cond_a

    if-eq v7, v14, :cond_9

    if-eqz v18, :cond_a

    .line 1792
    :cond_9
    add-int/lit8 v13, v13, -0x1

    .line 1772
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1794
    :cond_a
    if-le v14, v7, :cond_b

    .line 1795
    add-int/lit8 v14, v14, -0x1

    .line 1772
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1798
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_5

    .line 1800
    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1801
    aget v0, v16, v0

    iput v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 1802
    aget v0, v16, v1

    iput v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 1803
    iput v13, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 1804
    iput v14, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 1806
    :goto_5
    return-object v10
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2529
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2539
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getChildAt(II)Landroid/view/View;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getDistanceFromCell(FF[I)F
    .locals 4

    .line 734
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, p3, v3}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 735
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget p3, p3, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public final getItemMoveDescription(II)Ljava/lang/String;
    .locals 5

    .line 996
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c007a

    new-array v4, v2, [Ljava/lang/Object;

    .line 998
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    .line 997
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c0078

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr p2, v2

    .line 1001
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 1000
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getUnusedHorizontalSpace()I
    .locals 3

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final hasReorderSolution(Lcom/android/launcher3/ItemInfo;)Z
    .locals 19

    move-object/from16 v11, p0

    .line 2731
    move-object/from16 v12, p1

    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 2733
    const/4 v14, 0x0

    move v15, v14

    :goto_0
    iget v0, v11, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v15, v0, :cond_2

    .line 2734
    move v10, v14

    :goto_1
    iget v0, v11, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v10, v0, :cond_1

    .line 2735
    invoke-virtual {v11, v15, v10, v13}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 2736
    aget v1, v13, v14

    const/16 v16, 0x1

    aget v2, v13, v16

    iget v3, v12, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iget v4, v12, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iget v5, v12, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, v12, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v7, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-instance v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v0, v14}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(B)V

    move-object/from16 v17, v0

    move-object v0, v11

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    .line 2739
    return v16

    .line 2734
    :cond_0
    add-int/lit8 v10, v18, 0x1

    goto :goto_1

    .line 2733
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2743
    :cond_2
    return v14
.end method

.method final isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    .line 2181
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    .line 2182
    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p6, 0x1

    aget v2, p1, p6

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2184
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return p6

    :cond_0
    return p2
.end method

.method public final isOccupied(II)Z
    .locals 1

    .line 2520
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object p1, v0, p1

    aget-boolean p1, p1, p2

    return p1

    .line 2523
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Position exceeds the bound of this CellLayout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isRegionVacant(IIII)Z
    .locals 1

    .line 2747
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p1

    return p1
.end method

.method public final markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 6

    .line 2500
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2501
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2502
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2503
    return-void

    .line 2500
    :cond_1
    :goto_0
    return-void
.end method

.method public final markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 6

    .line 2506
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2508
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2509
    return-void

    .line 2506
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 429
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2

    .line 430
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v3, v3, v2

    .line 431
    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 432
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .line 433
    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 434
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-virtual {p1, v5, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 429
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewBackground;

    .line 457
    iget v6, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget v7, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 459
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v6, v6, v1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v7, v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 461
    iget-boolean v3, v2, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-nez v3, :cond_3

    .line 462
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 464
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    if-ltz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v0, v2, v6}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iput v4, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget-object v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    const/16 v4, 0xf5

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p1, v5}, Lcom/android/launcher3/folder/PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    :cond_5
    return-void
.end method

.method final onDropChild(Landroid/view/View;)V
    .locals 2

    .line 2467
    if-eqz p1, :cond_0

    .line 2468
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2469
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2470
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2471
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2473
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 329
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 330
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 793
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result p1

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    .line 795
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 796
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p4, p2

    .line 798
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result p2

    .line 799
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 801
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 803
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 804
    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    .line 805
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    .line 806
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v0

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p5, v0

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p5, v0

    .line 804
    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 809
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 753
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 754
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 755
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 756
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 757
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, p2, v3

    .line 759
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v4, :cond_2

    .line 760
    :cond_0
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int v4, v2, v4

    .line 761
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    div-int v5, v3, v5

    .line 762
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v5, v6, :cond_2

    .line 763
    :cond_1
    iput v4, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 764
    iput v5, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 765
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions$3b4dfe4b(III)V

    .line 769
    :cond_2
    nop

    .line 770
    nop

    .line 771
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v4, :cond_3

    .line 772
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 773
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    goto :goto_0

    .line 774
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 779
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 780
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 778
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    .line 784
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_4

    .line 785
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    return-void

    .line 787
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 789
    return-void

    .line 775
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 337
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 343
    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    const/4 p1, 0x1

    return p1

    .line 346
    :cond_0
    return v0
.end method

.method final performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 21

    move-object/from16 v11, p0

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v10, p7

    .line 2239
    move/from16 v9, p10

    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move v4, v13

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    .line 2241
    const/4 v8, 0x2

    if-nez p9, :cond_0

    .line 2242
    new-array v0, v8, [I

    .line 2248
    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p9

    :goto_0
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eq v9, v8, :cond_1

    if-eq v9, v7, :cond_1

    const/4 v0, 0x4

    if-ne v9, v0, :cond_4

    :cond_1
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v0, v0, v5

    const/16 v1, -0x64

    if-eq v0, v1, :cond_4

    .line 2250
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v2, v2, v5

    aput v2, v0, v5

    .line 2251
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v2, v2, v6

    aput v2, v0, v6

    .line 2253
    if-eq v9, v8, :cond_3

    if-ne v9, v7, :cond_2

    goto :goto_2

    .line 2264
    :cond_2
    :goto_1
    move v9, v5

    move/from16 v16, v6

    goto/16 :goto_4

    .line 2254
    :cond_3
    :goto_2
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aput v1, v0, v5

    .line 2255
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aput v1, v0, v6

    goto :goto_1

    .line 2258
    :cond_4
    iget-object v4, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    new-array v3, v8, [I

    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v16, v3

    move v3, v12

    move-object v8, v4

    move v4, v13

    move v9, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aget v1, v16, v9

    aget v2, v16, v6

    move-object/from16 v18, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aget v1, v16, v9

    aget v2, v16, v6

    iget-object v4, v11, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, v11

    move-object/from16 v16, v4

    move v4, v13

    move-object/from16 v19, v5

    move-object v5, v10

    move v9, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    move v9, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int v5, v0, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int v0, v0, p2

    div-int/2addr v0, v13

    iget v1, v11, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v7, v1, :cond_5

    iget v1, v11, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ne v12, v1, :cond_6

    :cond_5
    const/4 v5, 0x0

    :cond_6
    iget v1, v11, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v9, v1, :cond_7

    iget v1, v11, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ne v13, v1, :cond_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    if-nez v5, :cond_9

    if-nez v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v8, v0

    aput v0, v8, v1

    goto :goto_3

    :cond_9
    int-to-float v1, v5

    int-to-float v0, v0

    invoke-direct {v11, v1, v0, v8}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 2259
    :goto_3
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v9, 0x0

    aget v1, v1, v9

    aput v1, v0, v9

    .line 2260
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/16 v16, 0x1

    aget v1, v1, v16

    aput v1, v0, v16

    .line 2264
    :goto_4
    iget-object v7, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/16 v18, 0x1

    new-instance v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v8, v9}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(B)V

    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v12

    move v6, v13

    move-object/from16 v17, v8

    move-object v8, v10

    move v13, v9

    move/from16 v9, v18

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v8

    .line 2268
    new-instance v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v7, v13}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(B)V

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->findConfigurationNoShuffle$2d72d4a7(IIIIIILcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    .line 2271
    const/4 v1, 0x0

    .line 2275
    iget-boolean v2, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 2276
    goto :goto_5

    .line 2277
    :cond_a
    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_b

    .line 2278
    nop

    .line 2281
    move-object v8, v0

    goto :goto_5

    :cond_b
    move-object v8, v1

    :goto_5
    const/4 v0, -0x1

    move/from16 v1, p10

    if-nez v1, :cond_d

    .line 2282
    if-eqz v8, :cond_c

    .line 2283
    move-object/from16 v2, p7

    invoke-virtual {v11, v8, v2, v13}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations$75beef23(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    .line 2285
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    aput v0, v14, v13

    .line 2286
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v3, 0x1

    aput v0, v14, v3

    .line 2287
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    aput v0, v15, v13

    .line 2288
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    aput v0, v15, v3

    goto :goto_6

    .line 2290
    :cond_c
    const/4 v3, 0x1

    aput v0, v15, v3

    aput v0, v15, v13

    aput v0, v14, v3

    aput v0, v14, v13

    .line 2292
    :goto_6
    return-object v14

    .line 2295
    :cond_d
    move-object/from16 v2, p7

    const/4 v3, 0x1

    .line 2297
    invoke-virtual {v11, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2300
    if-eqz v8, :cond_13

    .line 2301
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    aput v0, v14, v13

    .line 2302
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    aput v0, v14, v3

    .line 2303
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    aput v0, v15, v13

    .line 2304
    iget v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    aput v0, v15, v3

    .line 2309
    if-eq v1, v3, :cond_f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v0, 0x3

    if-ne v1, v0, :cond_14

    goto :goto_7

    .line 2311
    :cond_e
    const/4 v0, 0x3

    goto :goto_7

    :cond_f
    const/4 v0, 0x3

    const/4 v4, 0x2

    :goto_7
    invoke-virtual {v11, v8, v2}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2313
    iput-boolean v3, v11, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2314
    if-ne v1, v4, :cond_10

    move v5, v3

    goto :goto_8

    :cond_10
    move v5, v13

    :goto_8
    invoke-virtual {v11, v8, v2, v5}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2316
    if-eq v1, v4, :cond_12

    if-ne v1, v0, :cond_11

    goto :goto_9

    .line 2322
    :cond_11
    invoke-virtual {v11, v8, v2, v3}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations$75beef23(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_a

    .line 2318
    :cond_12
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2320
    iput-boolean v13, v11, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    goto :goto_a

    .line 2327
    :cond_13
    const/4 v4, 0x2

    .line 2328
    aput v0, v15, v3

    aput v0, v15, v13

    aput v0, v14, v3

    aput v0, v14, v13

    .line 2331
    move v3, v13

    :cond_14
    :goto_a
    if-eq v1, v4, :cond_15

    if-nez v3, :cond_16

    .line 2332
    :cond_15
    invoke-virtual {v11, v13}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2335
    :cond_16
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2336
    return-object v14
.end method

.method final regionToCenterPoint(IIII[I)V
    .locals 3

    .line 712
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 714
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    const/4 p1, 0x0

    aput v0, p5, p1

    .line 715
    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    const/4 p1, 0x1

    aput v1, p5, p1

    .line 716
    return-void
.end method

.method final regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 3

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 727
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 728
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 729
    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    .line 730
    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p3, p1

    add-int/2addr p3, v0

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p4, p1

    add-int/2addr p4, v1

    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 731
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 599
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 605
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 607
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 613
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 619
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 625
    return-void
.end method

.method public removeViews(II)V
    .locals 2

    .line 629
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 633
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .line 637
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 641
    return-void
.end method

.method public final restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2

    .line 523
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-void

    .line 524
    :catch_0
    move-exception p1

    .line 529
    const-string v0, "CellLayout"

    const-string v1, "Ignoring an error while restoring a view instance state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    return-void
.end method

.method final revertTempState()V
    .locals 12

    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2189
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    if-eqz v0, :cond_3

    .line 2190
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2191
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2192
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2193
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2194
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v6, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v4, v6, :cond_1

    .line 2195
    :cond_0
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2196
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2197
    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2191
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2201
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2203
    :cond_3
    return-void
.end method

.method public final setGridSize(II)V
    .locals 2

    .line 360
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 361
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 362
    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 363
    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 364
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 365
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions$3b4dfe4b(III)V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 367
    return-void
.end method

.method final setIsDragOverlapping(Z)V
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_1

    .line 384
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 385
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 385
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 389
    :cond_1
    return-void
.end method

.method final setUseTempCoords(Z)V
    .locals 3

    .line 2083
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2084
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2085
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2086
    iput-boolean p1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2084
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2088
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 826
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 920
    move-object/from16 v10, p8

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 921
    iget-object v5, v6, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v11, 0x1

    aget v5, v5, v11

    .line 923
    if-eqz v0, :cond_7

    iget-object v12, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    if-nez v12, :cond_0

    goto/16 :goto_2

    .line 927
    :cond_0
    iget-object v12, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 928
    if-ne v8, v1, :cond_1

    if-eq v9, v5, :cond_6

    .line 929
    :cond_1
    iget-object v0, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 930
    iget-object v1, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 932
    iget-object v5, v6, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v8, v5, v2

    .line 933
    iget-object v5, v6, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v9, v5, v11

    .line 935
    iget v5, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 936
    iget-object v13, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v13, v13, v5

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 937
    add-int/2addr v5, v11

    iget-object v13, v6, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v13, v13

    rem-int/2addr v5, v13

    iput v5, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 938
    iget-object v5, v6, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v13, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v13, v5, v13

    .line 940
    if-eqz p7, :cond_2

    .line 941
    move-object v0, v6

    move v1, v8

    move v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 942
    instance-of v0, v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_5

    .line 943
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 944
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v13, v1, v0}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    .line 945
    goto/16 :goto_1

    .line 948
    :cond_2
    iget-object v5, v6, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 949
    invoke-virtual {v6, v8, v9, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 951
    aget v2, v5, v2

    .line 952
    aget v5, v5, v11

    .line 954
    if-eqz v7, :cond_3

    if-nez v0, :cond_3

    .line 957
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 958
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    .line 959
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v0

    .line 964
    iget v0, v6, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int v0, v0, p6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    add-int/2addr v5, v0

    .line 966
    iget v0, v6, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v0, v0, p5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    add-int/2addr v2, v0

    .line 967
    goto :goto_0

    .line 968
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 971
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v7, v6, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v7, v7, p5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v7, v1

    div-int/2addr v7, v14

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 972
    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    .line 973
    const/4 v3, 0x0

    iget v4, v6, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 974
    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 975
    goto :goto_0

    .line 977
    :cond_4
    iget v0, v6, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v0, v0, p5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    add-int/2addr v2, v0

    .line 978
    iget v0, v6, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int v0, v0, p6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    add-int/2addr v5, v0

    .line 981
    :goto_0
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v13, v2, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 984
    :cond_5
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v13, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 985
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    iput-object v12, v0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 986
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v11}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 988
    iget-object v0, v10, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_6

    .line 989
    iget-object v0, v10, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 992
    :cond_6
    return-void

    .line 924
    :cond_7
    :goto_2
    return-void
.end method
