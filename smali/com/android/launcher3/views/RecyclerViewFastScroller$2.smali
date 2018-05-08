.class Lcom/android/launcher3/views/RecyclerViewFastScroller$2;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->access$202(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)I

    .line 161
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object p1, p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 162
    return-void
.end method
