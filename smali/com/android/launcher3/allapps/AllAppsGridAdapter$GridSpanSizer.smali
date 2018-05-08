.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroid/support/v7/widget/D;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 161
    invoke-direct {p0}, Landroid/support/v7/widget/D;-><init>()V

    .line 162
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/D;->mCacheSpanIndices:Z

    .line 163
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget p1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    const/4 p1, 0x1

    return p1

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return p1
.end method
