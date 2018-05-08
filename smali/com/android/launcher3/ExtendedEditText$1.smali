.class Lcom/android/launcher3/ExtendedEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ExtendedEditText;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ExtendedEditText;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    invoke-static {v0}, Lcom/android/launcher3/ExtendedEditText;->access$000(Lcom/android/launcher3/ExtendedEditText;)Z

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->access$102(Lcom/android/launcher3/ExtendedEditText;Z)Z

    .line 93
    return-void
.end method
