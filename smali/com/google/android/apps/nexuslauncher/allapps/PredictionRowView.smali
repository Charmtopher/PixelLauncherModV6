.class public Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# static fields
.field public static final ya:Landroid/util/IntProperty;


# instance fields
.field private dx:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPaint:Landroid/graphics/Paint;

.field xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

.field private final yb:I

.field public final yc:Ljava/util/List;

.field public final yd:Ljava/util/ArrayList;

.field private final ye:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

.field private final yf:I

.field yg:Z

.field yh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/k;

    const-string v1, "textAlpha"

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->ya:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yc:Ljava/util/List;

    .line 82
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    .line 94
    const/16 p2, 0xff

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yh:I

    .line 102
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setOrientation(I)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setWillNotDraw(Z)V

    .line 104
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    .line 105
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yf:I

    .line 108
    new-instance p2, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {p2, p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->ye:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    .line 110
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yb:I

    .line 111
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yh:I

    return p0
.end method

.method private cQ()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object v0
.end method

.method private cR()V
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yb:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yb:I

    if-le v0, v1, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->removeViewAt(I)V

    goto :goto_0

    .line 216
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yb:I

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 219
    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    sget-object v1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeout(I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->ye:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 227
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 228
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 230
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yh:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->addView(Landroid/view/View;)V

    .line 232
    goto :goto_1

    .line 235
    :cond_1
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 236
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 237
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 238
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 239
    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    goto :goto_3

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_4

    .line 243
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_3

    .line 246
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 235
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cP()V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cT()V

    .line 252
    return-void
.end method


# virtual methods
.method final cP()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->dx:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setVisibility(I)V

    .line 311
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->ye:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    return-void
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .line 294
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 296
    if-ne v0, p2, :cond_0

    .line 297
    const/4 p2, 0x7

    iput p2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 298
    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 299
    return-void

    .line 294
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 302
    :cond_1
    return-void
.end method

.method public final getExpectedHeight()I
    .locals 3

    .line 153
    nop

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    add-int/2addr v1, v0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 159
    :cond_0
    return v1
.end method

.method public onAppsUpdated()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yc:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/e/a;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/nexuslauncher/e/a;->a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/ItemInfoWithIcon;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yb:I

    if-ne v3, v4, :cond_1

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cR()V

    .line 209
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 121
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 133
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->removeAllViews()V

    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cR()V

    .line 199
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yg:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 287
    int-to-float v5, v2

    int-to-float v8, v1

    int-to-float v7, v3

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getExpectedHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 144
    return-void
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->dx:Z

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cP()V

    .line 307
    return-void
.end method

.method public final setTextAlpha(I)V
    .locals 2

    .line 314
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yh:I

    .line 316
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yf:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 321
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yf:I

    invoke-static {v0, p1}, Landroid/support/v4/b/a;->f(II)I

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yg:Z

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->invalidate()V

    .line 328
    :cond_1
    return-void
.end method
