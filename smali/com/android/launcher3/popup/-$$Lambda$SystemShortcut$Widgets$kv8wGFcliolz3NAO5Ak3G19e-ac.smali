.class public final synthetic Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/Launcher;

.field private final synthetic f$1:Lcom/android/launcher3/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;->f$1:Lcom/android/launcher3/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;->f$1:Lcom/android/launcher3/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->lambda$getOnClickListener$0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    return-void
.end method
