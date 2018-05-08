.class Lcom/android/launcher3/views/RecyclerViewFastScroller$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->access$000(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->access$100(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    return-void
.end method
