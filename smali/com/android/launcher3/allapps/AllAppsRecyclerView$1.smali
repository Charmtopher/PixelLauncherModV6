.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;
.super Landroid/support/v7/widget/X;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$000(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 222
    return-void
.end method
