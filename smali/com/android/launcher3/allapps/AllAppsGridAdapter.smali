.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Landroid/support/v7/widget/V;
.source "SourceFile"


# instance fields
.field final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field final mAppsPerRow:I

.field mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

.field public mEmptySearchMessage:Ljava/lang/String;

.field final mGridLayoutMgr:Landroid/support/v7/widget/A;

.field private final mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

.field mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mMarketSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/V;-><init>()V

    .line 193
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 195
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 196
    const p2, 0x7f0c0031

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 197
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 198
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/A;

    .line 199
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/A;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    iput-object v0, p2, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 202
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 203
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/A;

    iget p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/A;->setSpanCount(I)V

    .line 204
    return-void
.end method

.method public static isViewType(II)Z
    .locals 0

    .line 215
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 339
    iget p1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return p1
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/aA;I)V
    .locals 2

    .line 50
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget v0, p1, Landroid/support/v7/widget/aA;->mItemViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p2, 0x4

    if-eq v0, p2, :cond_4

    const/16 p2, 0x8

    if-eq v0, p2, :cond_2

    const/16 p2, 0x10

    if-eq v0, p2, :cond_7

    const/16 p2, 0x20

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0e0091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setEnabled(Z)V

    iget-object p2, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0e0092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0093

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0092

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    goto :goto_1

    :cond_4
    iget-object p2, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    goto :goto_2

    :cond_5
    const v0, 0x800013

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object p2, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->reset()V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    invoke-interface {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_8
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aA;
    .locals 3

    .line 50
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f040044

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040004

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f04000b

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040005

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f040009

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeout(I)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final bridge synthetic onFailedToRecycleView$cb3a904()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method
